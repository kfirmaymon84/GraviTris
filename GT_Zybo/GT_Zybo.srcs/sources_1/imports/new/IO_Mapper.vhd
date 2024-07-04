library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity IO_Mapper is
  port
  (
    clk   : in std_logic;
    portA : in std_logic_vector (31 downto 0);
    portB : out std_logic_vector (31 downto 0);

    nEnable : out std_logic;

    --TFT Outputs
    tftDrv_data     : out std_logic_vector (7 downto 0);
    tftDrv_override : out std_logic;
    tftDrv_start    : out std_logic;
    tftDrv_DC_in    : out std_logic;
    tftDrv_WRX_in   : out std_logic;

    --TFT Inputs
    tftDrv_ready : in std_logic;

    --DEBUG
    dbg_LED0 : out std_logic;
    dbg_LED1 : out std_logic;
    dbg_LED2 : out std_logic;

    dbg_SW : in std_logic
  );
end IO_Mapper;

architecture Behavioral of IO_Mapper is

begin
  process (clk)
  begin
    if rising_edge(clk) then
      --PortA map (Outputs)
      tftDrv_data     <= portA(7 downto 0);
      tftDrv_override <= portA(8);
      tftDrv_start    <= portA(9);
      tftDrv_DC_in    <= portA(10);
      tftDrv_WRX_in   <= portA(11);
      nEnable         <= portA(12);

      dbg_LED0 <= PortA(13);
      dbg_LED1 <= PortA(14);
      dbg_LED2 <= PortA(15);

      --portB (inputs)
      portB(0) <= tftDrv_ready;
      portB(1) <= dbg_SW;

    end if;--if rising_edge(clk)
  end process;
end Behavioral;