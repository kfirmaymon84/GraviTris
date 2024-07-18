library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sim_tb is
--  Port ( );
end sim_tb;

architecture Behavioral of sim_tb is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    DC_out : out STD_LOGIC;
    WRX_out : out STD_LOGIC;
    tftData_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dbg_LED0 : out STD_LOGIC;
    dbg_LED1 : out STD_LOGIC;
    dbg_LED2 : out STD_LOGIC;
    dbg_SW : in STD_LOGIC
  );
  end component design_1;
  
    signal DDR_cas_n            : STD_LOGIC;
    signal DDR_cke              : STD_LOGIC;
    signal DDR_ck_n             : STD_LOGIC;
    signal DDR_ck_p             : STD_LOGIC;
    signal DDR_cs_n             : STD_LOGIC;
    signal DDR_reset_n          : STD_LOGIC;
    signal DDR_odt              : STD_LOGIC;
    signal DDR_ras_n            : STD_LOGIC;
    signal DDR_we_n             : STD_LOGIC;
    signal DDR_ba               : STD_LOGIC_VECTOR ( 2 downto 0 );
    signal DDR_addr             : STD_LOGIC_VECTOR ( 14 downto 0 );
    signal DDR_dm               : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal DDR_dq               : STD_LOGIC_VECTOR ( 31 downto 0 );
    signal DDR_dqs_n            : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal DDR_dqs_p            : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal FIXED_IO_mio         : STD_LOGIC_VECTOR ( 53 downto 0 );
    signal FIXED_IO_ddr_vrn     : STD_LOGIC;
    signal FIXED_IO_ddr_vrp     : STD_LOGIC;
    signal FIXED_IO_ps_srstb    : STD_LOGIC;
    signal FIXED_IO_ps_clk      : STD_LOGIC;
    signal FIXED_IO_ps_porb     : STD_LOGIC;
    signal DC_out               : STD_LOGIC;
    signal WRX_out              : STD_LOGIC;
    signal tftData_out          : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal dbg_LED0             : STD_LOGIC;
    signal dbg_LED1             : STD_LOGIC;
    signal dbg_LED2             : STD_LOGIC;
    signal dbg_SW               : STD_LOGIC;
begin
UUT: design_1
     port map (
      DC_out => DC_out,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      WRX_out => WRX_out,
      dbg_LED0 => dbg_LED0,
      dbg_LED1 => dbg_LED1,
      dbg_LED2 => dbg_LED2,
      dbg_SW => dbg_SW,
      tftData_out(7 downto 0) => tftData_out(7 downto 0)
    );

end Behavioral;
