library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Divider is
    Port ( clk_100 : in STD_LOGIC;
           clk_1K : out STD_LOGIC);
end Divider;

architecture Behavioral of Divider is
    signal counter : std_logic_vector(31 downto 0) := (others => '0');
    signal outBit : std_logic := '0';
begin
process(clk_100)
begin

    if rising_edge(clk_100) then
        if to_integer(unsigned(counter)) = 99999 then
            outBit <= not outBit;
            counter <= (others => '0');
        else
            counter <= std_logic_vector( unsigned(counter) + 1 );
        end if;
        clk_1K <= outBit;
    end if;
end process;


end Behavioral;
