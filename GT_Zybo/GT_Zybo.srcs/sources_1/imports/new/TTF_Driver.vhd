library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Frame memory maping:

-- address 	| Data
------------------
-- 0x00000000	| [8 bit x0][8 bit y0][8 bit Width][8 bit height]
-- 0x00000001	| [4 bit pixel 0][4 bit pixel 1][4 bit pixel 2][4 bit pixel 3] => to [4 bit pixel 7]
-- 0x00000002 | [4 bit pixel 8][4 bit pixel 9][4 bit pixel 10][4 bit pixel 11] => to [4 bit pixel 15]
-- and continue.

-- TFT pixel data:
-- 16 bit color 565 RGB format.
-- pixel format:
-- Byte 0: [(5-bit Red)(3 MSB Green)] = 8 bits.
-- Byte 1: [(3-bit LSB Green)(5-bit Blue)] = 8 bits.

-- Before sending to memory a command 0x2C needed to be send to inform display we going to send frame.
entity TTF_Driver is
  port
  (
    clk     : in std_logic;
    nEnable : in std_logic;
    ready   : out std_logic;
    start   : in std_logic;

    -- Override pins
    override   : in std_logic;
    DC_in      : in std_logic;
    WRX_in     : in std_logic;
    tftData_in : in std_logic_vector (7 downto 0);

    -- TFT_screen pins
    DC_out      : out std_logic;
    WRX_out     : out std_logic;
    tftData_out : out std_logic_vector (7 downto 0);

    -- BRAM pins
    bramEN      : out std_logic;
    bramAddress : out std_logic_vector (31 downto 0);
    bramData    : in std_logic_vector (31 downto 0)
  );
end TTF_Driver;
--  Pixel 16 color format [4bit high pixel, 4bit low pixle]
architecture Behavioral of TTF_Driver is
  type t_colors is array (0 to 15) of std_logic_vector (15 downto 0);
  signal colors : t_colors := (-- Pixel 16bit color Value
  x"0000", -- 0.   Black    0x0000
  x"7861", -- 1.   Maroon   0x7861
  x"23e1", -- 2.   Green    0x23e1
  x"7c02", -- 3.   Olive    0x7c02
  x"100f", -- 4.   Navy     0x100f
  x"784f", -- 5.   Purple   0x784f
  x"2bef", -- 6.   Teal     0x2bef
  x"bdf7", -- 7.   Silver   0xbdf7
  x"8410", -- 8.   Gray     0x8410
  x"f143", -- 9.   Red      0xf143
  x"4fe4", -- 10.A Lime     0x4fe4
  x"ffe5", -- 11.B Yellow   0xffe5
  x"301f", -- 12.C Blue     0x301f
  x"f11f", -- 13.D Fuchsia  0xf11f
  x"57ff", -- 14.E Aqua     0x57ff
  x"ffff" -- 15.F White    0xffff
  );
  -- Temporary pixel holder
  signal pixel0 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel1 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel2 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel3 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel4 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel5 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel6 : std_logic_vector (15 downto 0) := (others => '0');
  signal pixel7 : std_logic_vector (15 downto 0) := (others => '0');

  -- State machine signals
  type States is (reset_st, waitForStart_st, setupToPrintFrame_st, initDisplay_st, printFrame_st);
  signal stateIdx : States := reset_st;

  signal address      : std_logic_vector (31 downto 0) := (others => '0');
  signal frame_width  : std_logic_vector (7 downto 0)  := (others => '0');
  signal frame_height : std_logic_vector (7 downto 0)  := (others => '0');

  signal lastStart : std_logic := '0';

  signal pixelCount   : std_logic_vector (15 downto 0) := (others => '0');
  signal pixelInFrame : std_logic_vector (15 downto 0) := (others => '0');
  signal stepCount    : std_logic_vector (15 downto 0) := (others => '0');

  signal WRX_bit      : std_logic                := '0';
  signal lastWriteClk : std_logic                := '0';
  signal debugOutBit  : std_logic                := '0';
  signal x0 : std_logic_vector (15 downto 0) := (others => '0' );
  signal x1 : std_logic_vector (15 downto 0) := (others => '0' );
  signal y0 : std_logic_vector (15 downto 0) := (others => '0' );
  signal y1 : std_logic_vector (15 downto 0) := (others => '0' );
begin

  TFT_WritePro : process (clk)
  begin
    if rising_edge(clk) then
      if nEnable = '1' then
        -- Clear TFT pins
        DC_out      <= '0';
        WRX_bit     <= '0';
        tftData_out <= (others => '0');

        -- Disable BRAM for reading
        bramEN      <= '0';
        address <= (others => '0');
        -- Ready pin Clear
        ready <= '0';

        -- Reset state index to reset_st
        stateIdx <= reset_st;
      else
        if override = '1' then
          -- Set TFT pins passthru
          DC_out      <= DC_in;
          WRX_bit     <= WRX_in;
          tftData_out <= tftData_in;

          -- Reset ready pin
          ready <= '0';

          -- Reset state index to reset_st
          stateIdx <= reset_st;
        else
          case stateIdx is
            when reset_st =>

              -- Set state index to waitForStart_st		
              stateIdx <= waitForStart_st;
            when waitForStart_st =>
              -- wait for rising_edge of start pin
              if lastStart = '0' and start = '1' then -- wait for rise start.
                -- Inital variables
                address      <= (others => '0');
                stepCount    <= (others => '0');
                pixelCount   <= (others => '0');
                pixelInFrame <= (others => '0');

                -- Bram inital 
                address <= (others => '0');
                bramEN      <= '1';

                -- Set state index to setupToPrintFrame_st		
                stateIdx <= setupToPrintFrame_st;

                -- Reset ready pin
                ready <= '0';
              else
                -- Set ready pin to mark "ready to send frame"
                ready <= '1';
              end if;

              -- Store last state of start pin
              lastStart <= start;
            when setupToPrintFrame_st => -- Get Width, Height and send 0x2C command to start write to memory
              if to_integer(unsigned(stepCount)) = 4 then -- Read width and height after 4 clock to let BRAM stabilize (4Mhz clk 0)
                -- Get frame width
                frame_width <= bramData(15 downto 8);
                -- Get frame Height
                frame_height <= bramData(7 downto 0);

                -- Get x0
                x0(7 downto 0) <= bramData(31 downto 24);
                -- Get y0
                y0(7 downto 0) <= bramData(23 downto 16);

                -- Skip to next address (start of frame)
                address <= std_logic_vector(unsigned(address) + 4);

                -- Inital TFT pins
                DC_out      <= '0';
                WRX_bit     <= '0';
              elsif to_integer(unsigned(stepCount)) = 25 then -- Send TFT "Read from memory" command (4Mhz clk 1)
                -- Calc x1, y1
                x1 <=  std_logic_vector(unsigned(x0) + unsigned(frame_width) - 1);
                y1 <= std_logic_vector(unsigned(y0) + unsigned(frame_height) - 1);
              elsif to_integer(unsigned(stepCount)) = 36 then -- Clear WRX  (4Mhz clk 1.5)
                WRX_bit <= '0';
                tftData_out <= x"2A"; -- send command to X0
              elsif to_integer(unsigned(stepCount)) = 50 then -- Clear WRX  (4Mhz clk 2)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 62 then -- Clear WRX  (4Mhz clk 2.5)
                WRX_bit <= '0';
                DC_out      <= '1'; -- Set DC to Data
                tftData_out <= x0(15 downto 8); -- Set x0 MSB
              elsif to_integer(unsigned(stepCount)) = 75 then -- Clear WRX  (4Mhz clk 3)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 87 then -- Clear WRX  (4Mhz clk 3.5)
                WRX_bit <= '0';
                tftData_out <= x0(7 downto 0); -- Set x0 LSB
              elsif to_integer(unsigned(stepCount)) = 100 then -- Clear WRX  (4Mhz clk 4)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 112 then -- Clear WRX  (4Mhz clk 4.5)
                WRX_bit <= '0';
                tftData_out <= x1(15 downto 8); -- Set x1 MSB
              elsif to_integer(unsigned(stepCount)) = 125 then -- Clear WRX  (4Mhz clk 5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 136 then -- Clear WRX  (4Mhz clk 5.5)
                WRX_bit <= '0';
                tftData_out <= x1(7 downto 0); -- Set x1 LSB
              elsif to_integer(unsigned(stepCount)) = 150 then -- Clear WRX  (4Mhz clk 6)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 162 then -- Clear WRX  (4Mhz clk 6.5)
                WRX_bit <= '0';
                DC_out      <= '0'; -- Set DC to Command
                tftData_out <= x"2B"; -- send command to Y0
              elsif to_integer(unsigned(stepCount)) = 175 then -- Clear WRX  (4Mhz clk 7)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 187 then -- Clear WRX  (4Mhz clk 7.5)
                WRX_bit <= '0';
                DC_out      <= '1'; -- Set DC to Data
                tftData_out <= y0(15 downto 8); -- Set y0 MSB
              elsif to_integer(unsigned(stepCount)) = 200 then -- Clear WRX  (4Mhz clk 8)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 212 then -- Clear WRX  (4Mhz clk 8.5)
                WRX_bit <= '0';
                tftData_out <= y0(7 downto 0); -- Set y0 LSB
              elsif to_integer(unsigned(stepCount)) = 225 then -- Clear WRX  (4Mhz clk 9)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 236 then -- Clear WRX  (4Mhz clk 9.5)
                WRX_bit <= '0';
                tftData_out <= y1(15 downto 8); -- Set y1 MSB
              elsif to_integer(unsigned(stepCount)) = 250 then -- Clear WRX  (4Mhz clk 10)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 262 then -- Clear WRX  (4Mhz clk 10.5)
                WRX_bit <= '0';
                tftData_out <= y1(7 downto 0); -- Set y1 LSB
              elsif to_integer(unsigned(stepCount)) = 275 then -- Clear WRX  (4Mhz clk 11)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 287 then -- Clear WRX  (4Mhz clk 11.5)
                WRX_bit <= '0';
                DC_out      <= '0'; -- Set DC to Command
                tftData_out <= x"2C"; -- write command to TFT write to memory
              elsif to_integer(unsigned(stepCount)) = 300 then -- Clear WRX  (4Mhz clk 12)
                WRX_bit <= '1';  
              elsif to_integer(unsigned(stepCount)) = 312 then -- Clear WRX  (4Mhz clk 12.5)
                WRX_bit <= '0';
              end if;
              
              if to_integer(unsigned(stepCount)) = 325 then --(4Mhz clk 13)
                -- Calculate frame pixels count
                pixelInFrame <= std_logic_vector(unsigned(frame_width) * unsigned(frame_height));

                -- Inital TFT pins
                DC_out      <= '1'; -- Set DC to Data

                -- Inital step counter 
                stepCount <= (others => '0');

                --Get pixels from memory
                pixel0 <= colors(to_integer(unsigned(bramData(31 downto 28)))); -- Get RGB565 color format of pixel 0 
                pixel1 <= colors(to_integer(unsigned(bramData(27 downto 24)))); -- Get RGB565 color format of pixel 1
                pixel2 <= colors(to_integer(unsigned(bramData(23 downto 20)))); -- Get RGB565 color format of pixel 2
                pixel3 <= colors(to_integer(unsigned(bramData(19 downto 16)))); -- Get RGB565 color format of pixel 3
                pixel4 <= colors(to_integer(unsigned(bramData(15 downto 12)))); -- Get RGB565 color format of pixel 4
                pixel5 <= colors(to_integer(unsigned(bramData(11 downto 8)))); -- Get RGB565 color format of pixel 5
                pixel6 <= colors(to_integer(unsigned(bramData(7 downto 4)))); -- Get RGB565 color format of pixel 6
                pixel7 <= colors(to_integer(unsigned(bramData(3 downto 0)))); -- Get RGB565 color format of pixel 7

                address <= std_logic_vector(unsigned(address) + 4); -- skip to next 8 pixels in BRAM
                -- Set state index to printFrame_st	
                stateIdx <= printFrame_st;
              else
                -- Increment step counter
                stepCount <= std_logic_vector(unsigned(stepCount) + 1);
              end if;
            when printFrame_st =>
              -- ######## Pixels 0,1 ########
              if to_integer(unsigned(stepCount)) = 0 then -- Setup MSB pixel 0 (4Mhz clk 0) 
                tftData_out <= pixel0(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 12 then -- Send MSB pixle 0 (4Mhz clk 0.5) 
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 24 then -- Reset WRX pin (4Mhz clk 1)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 25 then -- Setup LSB pixel 0 (4Mhz clk 1.1)
                tftData_out <= pixel0(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 36 then -- Send LSB pixle 1 (4Mhz clk 1.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 49 then -- Reset WRX pin (4Mhz clk 2)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
              elsif to_integer(unsigned(stepCount)) = 50 then -- Setup MSB pixle 1 (4Mhz clk 2.1)
                tftData_out <= pixel1(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 62 then -- Send MSB pixle 1 (4Mhz clk 2.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 74 then -- Reset WRX pin (4Mhz clk 3)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 75 then -- Setup LSB pixle 1 (4Mhz clk 3.1)
                tftData_out <= pixel1(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 86 then -- Send LSB pixle 1 (4Mhz clk 3.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 99 then -- Reset WRX pin (4Mhz clk 3)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
                -- ######## Pixels 2,3 ########
              elsif to_integer(unsigned(stepCount)) = 100 then -- Setup MSB pixle 2 (4Mhz clk 4.1)
                tftData_out <= pixel2(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 112 then -- Send MSB pixle 2 (4Mhz clk 4.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 124 then -- Reset WRX pin (4Mhz clk 5)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 125 then -- Setup LSB pixle 2 (4Mhz clk 5.1)
                tftData_out <= pixel2(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 136 then -- Send LSB pixle 2 (4Mhz clk 5.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 149 then -- Reset WRX pin  (4Mhz clk 6)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
              elsif to_integer(unsigned(stepCount)) = 150 then -- Setup MSB pixle 3 (4Mhz clk 6.1)
                tftData_out <= pixel3(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 162 then -- Send MSB pixle 3 (4Mhz clk 6.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 174 then -- Reset WRX pin (4Mhz clk 7)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 175 then -- Setup LSB pixle 3 (4Mhz clk 7.1)
                tftData_out <= pixel3(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 186 then -- Send LSB pixle 3 (4Mhz clk 7.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 199 then -- Reset WRX pin (4Mhz clk 7)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
                -- ######## Pixels 4,5 ########
              elsif to_integer(unsigned(stepCount)) = 200 then -- Setup MSB pixle 4 (4Mhz clk 8.1)
                tftData_out <= pixel4(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 212 then -- Send MSB pixle 4 (4Mhz clk 8.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 224 then -- Reset WRX pin (4Mhz clk 9)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 225 then -- Setup LSB pixle 4 (4Mhz clk 9.1)
                tftData_out <= pixel4(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 236 then -- Send LSB pixle 4 (4Mhz clk 9.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 249 then -- Reset WRX pin (4Mhz clk 10)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
              elsif to_integer(unsigned(stepCount)) = 250 then -- Setup MSB pixle 5 (4Mhz clk 10.1)
                tftData_out <= pixel5(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 262 then -- Send MSB pixle 5 (4Mhz clk 10.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 274 then -- Reset WRX pin (4Mhz clk 11)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 275 then -- Setup LSB pixle 5 (4Mhz clk 11.1)
                tftData_out <= pixel5(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 286 then -- Send LSB pixle 5 (4Mhz clk 11.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 299 then -- Reset WRX pin (4Mhz clk 12)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
                -- ######## Pixels 6,7 ########
              elsif to_integer(unsigned(stepCount)) = 300 then -- Setup MSB pixle 6 (4Mhz clk 13.1)
                tftData_out <= pixel6(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 312 then -- Send MSB pixle 6 (4Mhz clk 13.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 324 then -- Reset WRX pin (4Mhz clk 14)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 325 then -- Setup LSB pixle 6 (4Mhz clk 14.1)
                tftData_out <= pixel6(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 336 then -- Send LSB pixle 6 (4Mhz clk 14.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 349 then -- Reset WRX pin (4Mhz clk 15) 
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);
              elsif to_integer(unsigned(stepCount)) = 350 then -- Setup MSB pixle 7 (4Mhz clk 15.1)
                tftData_out <= pixel7(15 downto 8);
              elsif to_integer(unsigned(stepCount)) = 362 then -- Send MSB pixle 7 (4Mhz clk 15.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 374 then -- Reset WRX pin (4Mhz clk 16)
                WRX_bit <= '0';
              elsif to_integer(unsigned(stepCount)) = 375 then -- Setup LSB pixle 7 (4Mhz clk 16.1)
                tftData_out <= pixel7(7 downto 0);
              elsif to_integer(unsigned(stepCount)) = 386 then -- Send LSB pixle 7 (4Mhz clk 16.5)
                WRX_bit <= '1';
              elsif to_integer(unsigned(stepCount)) = 399 then -- Reset WRX pin (4Mhz clk 17)
                WRX_bit    <= '0';
                pixelCount <= std_logic_vector(unsigned(pixelCount) + 1);  
                --advance to next pixels  (4Mhz clk 4)

                --Get pixel from memory
                pixel0 <= colors(to_integer(unsigned(bramData(31 downto 28)))); -- Get RGB565 color format of pixel 0 
                pixel1 <= colors(to_integer(unsigned(bramData(27 downto 24)))); -- Get RGB565 color format of pixel 1
                pixel2 <= colors(to_integer(unsigned(bramData(23 downto 20)))); -- Get RGB565 color format of pixel 2
                pixel3 <= colors(to_integer(unsigned(bramData(19 downto 16)))); -- Get RGB565 color format of pixel 3
                pixel4 <= colors(to_integer(unsigned(bramData(15 downto 12)))); -- Get RGB565 color format of pixel 4
                pixel5 <= colors(to_integer(unsigned(bramData(11 downto 8)))); -- Get RGB565 color format of pixel 5
                pixel6 <= colors(to_integer(unsigned(bramData(7 downto 4)))); -- Get RGB565 color format of pixel 6
                pixel7 <= colors(to_integer(unsigned(bramData(3 downto 0)))); -- Get RGB565 color format of pixel 7
                address <= std_logic_vector(unsigned(address) + 4); -- skip to next 8 pixels in BRAM
              end if;

              -- Step counter handler
              if to_integer(unsigned(stepCount)) = 399 then
                stepCount <= (others => '0'); -- Reset step counter
              else
                stepCount <= std_logic_vector(unsigned(stepCount) + 1); -- Increment step counter
              end if;

              -- Pixel counter handler
              if to_integer(unsigned(pixelCount)) = unsigned(pixelInFrame) then -- Done print pixles
                -- Done print frame
                stateIdx <= waitForStart_st;
              end if;
            when others => null;
          end case;
          
        end if; -- override = '1'             
      end if; -- nEnable = '1'
      bramAddress <= address; -- set bramAddress as address signal
      WRX_out <= WRX_bit;
    end if; -- rising_edge(clk)
  end process;

end Behavioral;