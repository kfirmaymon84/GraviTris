-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Jul  3 14:26:56 2024
-- Host        : CP-230194 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/FPGA/FPGA_FUN/GT_Zybo/GT_Zybo.gen/sources_1/bd/design_1/ip/design_1_TTF_Driver_0_0/design_1_TTF_Driver_0_0_sim_netlist.vhdl
-- Design      : design_1_TTF_Driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TTF_Driver_0_0_TTF_Driver is
  port (
    WRX_out : out STD_LOGIC;
    tftData_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bramAddress : out STD_LOGIC_VECTOR ( 29 downto 0 );
    ready : out STD_LOGIC;
    DC_out : out STD_LOGIC;
    bramEN : out STD_LOGIC;
    start : in STD_LOGIC;
    nEnable : in STD_LOGIC;
    override : in STD_LOGIC;
    bramData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    tftData_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DC_in : in STD_LOGIC;
    WRX_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TTF_Driver_0_0_TTF_Driver : entity is "TTF_Driver";
end design_1_TTF_Driver_0_0_TTF_Driver;

architecture STRUCTURE of design_1_TTF_Driver_0_0_TTF_Driver is
  signal \^dc_out\ : STD_LOGIC;
  signal DC_out_i_10_n_0 : STD_LOGIC;
  signal DC_out_i_1_n_0 : STD_LOGIC;
  signal DC_out_i_2_n_0 : STD_LOGIC;
  signal DC_out_i_3_n_0 : STD_LOGIC;
  signal DC_out_i_4_n_0 : STD_LOGIC;
  signal DC_out_i_5_n_0 : STD_LOGIC;
  signal DC_out_i_6_n_0 : STD_LOGIC;
  signal DC_out_i_7_n_0 : STD_LOGIC;
  signal DC_out_i_8_n_0 : STD_LOGIC;
  signal DC_out_i_9_n_0 : STD_LOGIC;
  signal \FSM_sequential_stateIdx[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stateIdx[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stateIdx[1]_i_2_n_0\ : STD_LOGIC;
  signal WRX_bit_i_10_n_0 : STD_LOGIC;
  signal WRX_bit_i_11_n_0 : STD_LOGIC;
  signal WRX_bit_i_12_n_0 : STD_LOGIC;
  signal WRX_bit_i_13_n_0 : STD_LOGIC;
  signal WRX_bit_i_15_n_0 : STD_LOGIC;
  signal WRX_bit_i_16_n_0 : STD_LOGIC;
  signal WRX_bit_i_17_n_0 : STD_LOGIC;
  signal WRX_bit_i_18_n_0 : STD_LOGIC;
  signal WRX_bit_i_19_n_0 : STD_LOGIC;
  signal WRX_bit_i_1_n_0 : STD_LOGIC;
  signal WRX_bit_i_20_n_0 : STD_LOGIC;
  signal WRX_bit_i_21_n_0 : STD_LOGIC;
  signal WRX_bit_i_22_n_0 : STD_LOGIC;
  signal WRX_bit_i_23_n_0 : STD_LOGIC;
  signal WRX_bit_i_24_n_0 : STD_LOGIC;
  signal WRX_bit_i_25_n_0 : STD_LOGIC;
  signal WRX_bit_i_26_n_0 : STD_LOGIC;
  signal WRX_bit_i_27_n_0 : STD_LOGIC;
  signal WRX_bit_i_28_n_0 : STD_LOGIC;
  signal WRX_bit_i_29_n_0 : STD_LOGIC;
  signal WRX_bit_i_2_n_0 : STD_LOGIC;
  signal WRX_bit_i_30_n_0 : STD_LOGIC;
  signal WRX_bit_i_31_n_0 : STD_LOGIC;
  signal WRX_bit_i_32_n_0 : STD_LOGIC;
  signal WRX_bit_i_33_n_0 : STD_LOGIC;
  signal WRX_bit_i_34_n_0 : STD_LOGIC;
  signal WRX_bit_i_35_n_0 : STD_LOGIC;
  signal WRX_bit_i_36_n_0 : STD_LOGIC;
  signal WRX_bit_i_37_n_0 : STD_LOGIC;
  signal WRX_bit_i_38_n_0 : STD_LOGIC;
  signal WRX_bit_i_39_n_0 : STD_LOGIC;
  signal WRX_bit_i_3_n_0 : STD_LOGIC;
  signal WRX_bit_i_40_n_0 : STD_LOGIC;
  signal WRX_bit_i_41_n_0 : STD_LOGIC;
  signal WRX_bit_i_42_n_0 : STD_LOGIC;
  signal WRX_bit_i_43_n_0 : STD_LOGIC;
  signal WRX_bit_i_44_n_0 : STD_LOGIC;
  signal WRX_bit_i_45_n_0 : STD_LOGIC;
  signal WRX_bit_i_4_n_0 : STD_LOGIC;
  signal WRX_bit_i_5_n_0 : STD_LOGIC;
  signal WRX_bit_i_6_n_0 : STD_LOGIC;
  signal WRX_bit_i_7_n_0 : STD_LOGIC;
  signal WRX_bit_i_9_n_0 : STD_LOGIC;
  signal WRX_bit_reg_i_14_n_0 : STD_LOGIC;
  signal WRX_bit_reg_i_8_n_0 : STD_LOGIC;
  signal WRX_bit_reg_n_0 : STD_LOGIC;
  signal \address[10]_i_1_n_0\ : STD_LOGIC;
  signal \address[11]_i_1_n_0\ : STD_LOGIC;
  signal \address[12]_i_1_n_0\ : STD_LOGIC;
  signal \address[13]_i_1_n_0\ : STD_LOGIC;
  signal \address[14]_i_1_n_0\ : STD_LOGIC;
  signal \address[15]_i_1_n_0\ : STD_LOGIC;
  signal \address[16]_i_1_n_0\ : STD_LOGIC;
  signal \address[17]_i_1_n_0\ : STD_LOGIC;
  signal \address[18]_i_1_n_0\ : STD_LOGIC;
  signal \address[19]_i_1_n_0\ : STD_LOGIC;
  signal \address[20]_i_1_n_0\ : STD_LOGIC;
  signal \address[21]_i_1_n_0\ : STD_LOGIC;
  signal \address[22]_i_1_n_0\ : STD_LOGIC;
  signal \address[23]_i_1_n_0\ : STD_LOGIC;
  signal \address[24]_i_1_n_0\ : STD_LOGIC;
  signal \address[25]_i_1_n_0\ : STD_LOGIC;
  signal \address[26]_i_1_n_0\ : STD_LOGIC;
  signal \address[27]_i_1_n_0\ : STD_LOGIC;
  signal \address[28]_i_1_n_0\ : STD_LOGIC;
  signal \address[29]_i_1_n_0\ : STD_LOGIC;
  signal \address[2]_i_1_n_0\ : STD_LOGIC;
  signal \address[30]_i_1_n_0\ : STD_LOGIC;
  signal \address[31]_i_1_n_0\ : STD_LOGIC;
  signal \address[31]_i_2_n_0\ : STD_LOGIC;
  signal \address[31]_i_3_n_0\ : STD_LOGIC;
  signal \address[3]_i_1_n_0\ : STD_LOGIC;
  signal \address[4]_i_1_n_0\ : STD_LOGIC;
  signal \address[5]_i_1_n_0\ : STD_LOGIC;
  signal \address[6]_i_1_n_0\ : STD_LOGIC;
  signal \address[7]_i_1_n_0\ : STD_LOGIC;
  signal \address[8]_i_1_n_0\ : STD_LOGIC;
  signal \address[9]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg_n_0_[10]\ : STD_LOGIC;
  signal \address_reg_n_0_[11]\ : STD_LOGIC;
  signal \address_reg_n_0_[12]\ : STD_LOGIC;
  signal \address_reg_n_0_[13]\ : STD_LOGIC;
  signal \address_reg_n_0_[14]\ : STD_LOGIC;
  signal \address_reg_n_0_[15]\ : STD_LOGIC;
  signal \address_reg_n_0_[16]\ : STD_LOGIC;
  signal \address_reg_n_0_[17]\ : STD_LOGIC;
  signal \address_reg_n_0_[18]\ : STD_LOGIC;
  signal \address_reg_n_0_[19]\ : STD_LOGIC;
  signal \address_reg_n_0_[20]\ : STD_LOGIC;
  signal \address_reg_n_0_[21]\ : STD_LOGIC;
  signal \address_reg_n_0_[22]\ : STD_LOGIC;
  signal \address_reg_n_0_[23]\ : STD_LOGIC;
  signal \address_reg_n_0_[24]\ : STD_LOGIC;
  signal \address_reg_n_0_[25]\ : STD_LOGIC;
  signal \address_reg_n_0_[26]\ : STD_LOGIC;
  signal \address_reg_n_0_[27]\ : STD_LOGIC;
  signal \address_reg_n_0_[28]\ : STD_LOGIC;
  signal \address_reg_n_0_[29]\ : STD_LOGIC;
  signal \address_reg_n_0_[2]\ : STD_LOGIC;
  signal \address_reg_n_0_[30]\ : STD_LOGIC;
  signal \address_reg_n_0_[31]\ : STD_LOGIC;
  signal \address_reg_n_0_[3]\ : STD_LOGIC;
  signal \address_reg_n_0_[4]\ : STD_LOGIC;
  signal \address_reg_n_0_[5]\ : STD_LOGIC;
  signal \address_reg_n_0_[6]\ : STD_LOGIC;
  signal \address_reg_n_0_[7]\ : STD_LOGIC;
  signal \address_reg_n_0_[8]\ : STD_LOGIC;
  signal \address_reg_n_0_[9]\ : STD_LOGIC;
  signal \^bramen\ : STD_LOGIC;
  signal bramEN0 : STD_LOGIC;
  signal bramEN_i_1_n_0 : STD_LOGIC;
  signal data10 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data12 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data14 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_height : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \frame_height[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_height[7]_i_2_n_0\ : STD_LOGIC;
  signal \frame_height[7]_i_3_n_0\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[1]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[2]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame_width_reg_n_0_[7]\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal in17 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal in22 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal lastStart : STD_LOGIC;
  signal lastStart_i_1_n_0 : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \minusOp__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_n_1\ : STD_LOGIC;
  signal \minusOp__0_carry_n_2\ : STD_LOGIC;
  signal \minusOp__0_carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__0_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__1_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry__1_n_7\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_4\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_5\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_6\ : STD_LOGIC;
  signal \minusOp_inferred__0/i___0_carry_n_7\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out[7]_i_29_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out[7]_i_30_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out[7]_i_44_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out[7]_i_45_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out[7]_i_46_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out[7]_i_47_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out_reg[7]_i_31_n_0\ : STD_LOGIC;
  signal \p_0_out_inferred__4/tftData_out_reg[7]_i_32_n_0\ : STD_LOGIC;
  signal \pixel0[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel0__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pixel1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pixel1[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel1[9]_i_1_n_0\ : STD_LOGIC;
  signal pixel2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pixel2[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel2[9]_i_1_n_0\ : STD_LOGIC;
  signal pixel3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pixel3[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel3[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel4_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel5[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel5_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel6[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel6_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel7[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[10]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[11]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[13]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[14]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[15]_i_2_n_0\ : STD_LOGIC;
  signal \pixel7[15]_i_3_n_0\ : STD_LOGIC;
  signal \pixel7[15]_i_4_n_0\ : STD_LOGIC;
  signal \pixel7[15]_i_5_n_0\ : STD_LOGIC;
  signal \pixel7[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel7_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixelCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_2_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_4_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_5_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_6_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_7_n_0\ : STD_LOGIC;
  signal \pixelCount[15]_i_8_n_0\ : STD_LOGIC;
  signal \pixelCount_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pixelCount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pixelCount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pixelCount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pixelCount_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \pixelCount_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \pixelCount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixelCount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pixelCount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pixelCount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pixelCount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixelCount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pixelCount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pixelCount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[10]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[11]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[12]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[13]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[14]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[15]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[8]\ : STD_LOGIC;
  signal \pixelCount_reg_n_0_[9]\ : STD_LOGIC;
  signal pixelInFrame0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pixelInFrame0__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_4\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_5\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_6\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__0_n_7\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_n_6\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry__1_n_7\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__0_carry_n_4\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_4\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_5\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_6\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__0_n_7\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_n_6\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry__1_n_7\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_6_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_7_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_i_8_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_4\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_5\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_6\ : STD_LOGIC;
  signal \pixelInFrame0__30_carry_n_7\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__0_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__1_n_3\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_n_0\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_n_1\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_n_2\ : STD_LOGIC;
  signal \pixelInFrame0__60_carry_n_3\ : STD_LOGIC;
  signal \pixelInFrame[15]_i_1_n_0\ : STD_LOGIC;
  signal \pixelInFrame[15]_i_2_n_0\ : STD_LOGIC;
  signal \pixelInFrame[15]_i_3_n_0\ : STD_LOGIC;
  signal \pixelInFrame[15]_i_4_n_0\ : STD_LOGIC;
  signal \pixelInFrame[15]_i_5_n_0\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[10]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[11]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[12]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[13]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[14]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[15]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[8]\ : STD_LOGIC;
  signal \pixelInFrame_reg_n_0_[9]\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal ready_i_2_n_0 : STD_LOGIC;
  signal \stateIdx0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \stateIdx0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \stateIdx0_carry__0_n_2\ : STD_LOGIC;
  signal \stateIdx0_carry__0_n_3\ : STD_LOGIC;
  signal stateIdx0_carry_i_1_n_0 : STD_LOGIC;
  signal stateIdx0_carry_i_2_n_0 : STD_LOGIC;
  signal stateIdx0_carry_i_3_n_0 : STD_LOGIC;
  signal stateIdx0_carry_i_4_n_0 : STD_LOGIC;
  signal stateIdx0_carry_n_0 : STD_LOGIC;
  signal stateIdx0_carry_n_1 : STD_LOGIC;
  signal stateIdx0_carry_n_2 : STD_LOGIC;
  signal stateIdx0_carry_n_3 : STD_LOGIC;
  signal \stateIdx__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stepCount[0]_i_1_n_0\ : STD_LOGIC;
  signal \stepCount[15]_i_1_n_0\ : STD_LOGIC;
  signal \stepCount[15]_i_2_n_0\ : STD_LOGIC;
  signal \stepCount[15]_i_5_n_0\ : STD_LOGIC;
  signal \stepCount[15]_i_6_n_0\ : STD_LOGIC;
  signal \stepCount[15]_i_7_n_0\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \stepCount_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \stepCount_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \stepCount_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \stepCount_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \stepCount_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \stepCount_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \stepCount_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \stepCount_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \stepCount_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[0]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[10]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[11]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[12]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[13]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[14]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[15]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[1]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[2]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[3]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[4]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[5]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[6]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[7]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[8]\ : STD_LOGIC;
  signal \stepCount_reg_n_0_[9]\ : STD_LOGIC;
  signal \tftData_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_12_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[0]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_12_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_13_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_14_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_15_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_16_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_17_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[1]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_12_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_13_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_14_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[2]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[4]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_12_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_13_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_14_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_15_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_16_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_17_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[5]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[6]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_10_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_11_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_12_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_15_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_16_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_17_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_18_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_19_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_20_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_21_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_22_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_23_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_24_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_25_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_26_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_27_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_28_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_33_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_34_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_35_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_36_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_37_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_38_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_39_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_40_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_41_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_42_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_43_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_48_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_49_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_50_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_51_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_52_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_53_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_7_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_8_n_0\ : STD_LOGIC;
  signal \tftData_out[7]_i_9_n_0\ : STD_LOGIC;
  signal \tftData_out_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \x0_reg_n_0_[0]\ : STD_LOGIC;
  signal \x0_reg_n_0_[1]\ : STD_LOGIC;
  signal \x0_reg_n_0_[2]\ : STD_LOGIC;
  signal \x0_reg_n_0_[3]\ : STD_LOGIC;
  signal \x0_reg_n_0_[4]\ : STD_LOGIC;
  signal \x0_reg_n_0_[5]\ : STD_LOGIC;
  signal \x0_reg_n_0_[6]\ : STD_LOGIC;
  signal \x0_reg_n_0_[7]\ : STD_LOGIC;
  signal \x1[15]_i_1_n_0\ : STD_LOGIC;
  signal \x1[15]_i_2_n_0\ : STD_LOGIC;
  signal \x1[15]_i_3_n_0\ : STD_LOGIC;
  signal \x1_reg_n_0_[0]\ : STD_LOGIC;
  signal \x1_reg_n_0_[1]\ : STD_LOGIC;
  signal \x1_reg_n_0_[2]\ : STD_LOGIC;
  signal \x1_reg_n_0_[3]\ : STD_LOGIC;
  signal \x1_reg_n_0_[4]\ : STD_LOGIC;
  signal \x1_reg_n_0_[5]\ : STD_LOGIC;
  signal \x1_reg_n_0_[6]\ : STD_LOGIC;
  signal \x1_reg_n_0_[7]\ : STD_LOGIC;
  signal \y0_reg_n_0_[0]\ : STD_LOGIC;
  signal \y0_reg_n_0_[1]\ : STD_LOGIC;
  signal \y0_reg_n_0_[2]\ : STD_LOGIC;
  signal \y0_reg_n_0_[3]\ : STD_LOGIC;
  signal \y0_reg_n_0_[4]\ : STD_LOGIC;
  signal \y0_reg_n_0_[5]\ : STD_LOGIC;
  signal \y0_reg_n_0_[6]\ : STD_LOGIC;
  signal \y0_reg_n_0_[7]\ : STD_LOGIC;
  signal \y1_reg_n_0_[0]\ : STD_LOGIC;
  signal \y1_reg_n_0_[1]\ : STD_LOGIC;
  signal \y1_reg_n_0_[2]\ : STD_LOGIC;
  signal \y1_reg_n_0_[3]\ : STD_LOGIC;
  signal \y1_reg_n_0_[4]\ : STD_LOGIC;
  signal \y1_reg_n_0_[5]\ : STD_LOGIC;
  signal \y1_reg_n_0_[6]\ : STD_LOGIC;
  signal \y1_reg_n_0_[7]\ : STD_LOGIC;
  signal \NLW_minusOp__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_minusOp_inferred__0/i___0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_inferred__0/i___0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixelCount_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixelCount_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_pixelInFrame0__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pixelInFrame0__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixelInFrame0__30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pixelInFrame0__30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pixelInFrame0__60_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pixelInFrame0__60_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_stateIdx0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stateIdx0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stateIdx0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stepCount_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stepCount_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DC_out_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of DC_out_i_4 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of DC_out_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_stateIdx[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_stateIdx[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stateIdx_reg[0]\ : label is "reset_st:00,waitforstart_st:01,setuptoprintframe_st:10,printframe_st:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stateIdx_reg[1]\ : label is "reset_st:00,waitforstart_st:01,setuptoprintframe_st:10,printframe_st:11,";
  attribute SOFT_HLUTNM of WRX_bit_i_16 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of WRX_bit_i_26 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of WRX_bit_i_28 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of WRX_bit_i_33 : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of WRX_bit_i_34 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of WRX_bit_i_35 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of WRX_bit_i_38 : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of WRX_bit_i_40 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of WRX_bit_i_41 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of WRX_bit_i_42 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of WRX_bit_i_7 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \address[10]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \address[11]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \address[12]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \address[13]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \address[14]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \address[15]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \address[16]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \address[17]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \address[18]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \address[19]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \address[20]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \address[21]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \address[22]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \address[23]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \address[24]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \address[25]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \address[26]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \address[27]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \address[28]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \address[29]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \address[30]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \address[31]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \address[3]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \address[4]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \address[5]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \address[6]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \address[7]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \address[8]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \address[9]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \frame_height[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel0[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pixel0[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pixel0[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pixel0[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pixel0[13]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \pixel0[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pixel0[15]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pixel0[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pixel0[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \pixel0[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pixel0[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pixel0[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pixel0[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pixel0[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pixel0[8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pixel0[9]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \pixel1[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pixel1[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pixel1[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pixel1[12]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pixel1[13]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pixel1[14]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pixel1[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pixel1[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \pixel1[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pixel1[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pixel1[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \pixel1[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pixel1[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \pixel1[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pixel1[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pixel1[9]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \pixel2[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pixel2[10]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pixel2[11]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \pixel2[12]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pixel2[13]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \pixel2[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pixel2[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \pixel2[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \pixel2[2]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pixel2[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pixel2[4]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \pixel2[5]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pixel2[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \pixel2[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pixel2[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \pixel2[9]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \pixel3[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pixel3[10]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pixel3[11]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \pixel3[12]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pixel3[13]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \pixel3[14]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pixel3[15]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pixel3[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \pixel3[2]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \pixel3[3]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pixel3[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \pixel3[5]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pixel3[6]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \pixel3[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pixel3[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \pixel3[9]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \pixel4[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pixel4[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pixel4[11]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pixel4[12]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pixel4[13]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pixel4[14]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pixel4[15]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pixel4[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \pixel4[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \pixel4[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pixel4[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \pixel4[5]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pixel4[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \pixel4[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pixel4[8]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pixel4[9]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \pixel5[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pixel5[10]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pixel5[11]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pixel5[12]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pixel5[13]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \pixel5[14]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pixel5[15]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \pixel5[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pixel5[2]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \pixel5[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pixel5[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \pixel5[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pixel5[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \pixel5[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pixel5[8]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \pixel5[9]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \pixel6[0]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pixel6[10]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pixel6[11]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \pixel6[12]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \pixel6[13]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \pixel6[14]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \pixel6[15]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \pixel6[1]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \pixel6[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \pixel6[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pixel6[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \pixel6[5]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pixel6[6]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \pixel6[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pixel6[8]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \pixel6[9]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \pixel7[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pixel7[10]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pixel7[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pixel7[12]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pixel7[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pixel7[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pixel7[15]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pixel7[15]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pixel7[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pixel7[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \pixel7[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pixel7[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pixel7[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pixel7[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pixel7[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pixel7[8]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \pixel7[9]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \pixelCount[15]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixelCount[15]_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pixelCount[15]_i_8\ : label is "soft_lutpair14";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pixelCount_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixelCount_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \pixelCount_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixelCount_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \pixelInFrame0__0_carry__0_i_10\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \pixelInFrame0__0_carry__0_i_11\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \pixelInFrame0__0_carry__0_i_12\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \pixelInFrame0__0_carry__0_i_9\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \pixelInFrame0__0_carry_i_8\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \pixelInFrame0__30_carry__0_i_10\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \pixelInFrame0__30_carry__0_i_11\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \pixelInFrame0__30_carry__0_i_12\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \pixelInFrame0__30_carry__0_i_9\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \pixelInFrame0__30_carry_i_8\ : label is "soft_lutpair100";
  attribute ADDER_THRESHOLD of \pixelInFrame0__60_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \pixelInFrame0__60_carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__0_i_10\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__0_i_11\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__0_i_12\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__0_i_13\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__0_i_9\ : label is "soft_lutpair77";
  attribute ADDER_THRESHOLD of \pixelInFrame0__60_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_10\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_11\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_12\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_13\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_14\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_15\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \pixelInFrame0__60_carry__1_i_9\ : label is "soft_lutpair105";
  attribute ADDER_THRESHOLD of \pixelInFrame0__60_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \pixelInFrame[15]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \pixelInFrame[15]_i_4\ : label is "soft_lutpair72";
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__1/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of ready_i_2 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \stepCount[0]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \stepCount[15]_i_7\ : label is "soft_lutpair75";
  attribute ADDER_THRESHOLD of \stepCount_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \stepCount_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \stepCount_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \stepCount_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \tftData_out[0]_i_4\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \tftData_out[1]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tftData_out[1]_i_16\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \tftData_out[1]_i_17\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \tftData_out[1]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \tftData_out[1]_i_5\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \tftData_out[2]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \tftData_out[2]_i_4\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \tftData_out[3]_i_11\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \tftData_out[4]_i_11\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tftData_out[4]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \tftData_out[4]_i_5\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \tftData_out[5]_i_13\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tftData_out[5]_i_16\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \tftData_out[5]_i_17\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tftData_out[5]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \tftData_out[5]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tftData_out[6]_i_4\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \tftData_out[6]_i_5\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_11\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_12\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_16\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_19\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_20\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_35\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_42\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_43\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_48\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_49\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_50\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_52\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_53\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tftData_out[7]_i_7\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \x1[15]_i_3\ : label is "soft_lutpair5";
begin
  DC_out <= \^dc_out\;
  bramEN <= \^bramen\;
  ready <= \^ready\;
DC_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEF2FE02"
    )
        port map (
      I0 => \^dc_out\,
      I1 => DC_out_i_2_n_0,
      I2 => override,
      I3 => DC_out_i_3_n_0,
      I4 => DC_in,
      I5 => nEnable,
      O => DC_out_i_1_n_0
    );
DC_out_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFCFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => override,
      I2 => \stepCount_reg_n_0_[9]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[6]\,
      O => DC_out_i_10_n_0
    );
DC_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008AAAAAAAA"
    )
        port map (
      I0 => \tftData_out[7]_i_7_n_0\,
      I1 => DC_out_i_4_n_0,
      I2 => DC_out_i_5_n_0,
      I3 => DC_out_i_6_n_0,
      I4 => DC_out_i_7_n_0,
      I5 => \tftData_out[7]_i_4_n_0\,
      O => DC_out_i_2_n_0
    );
DC_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C8F84000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[0]\,
      I5 => DC_out_i_8_n_0,
      O => DC_out_i_3_n_0
    );
DC_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D00000C3"
    )
        port map (
      I0 => \stepCount_reg_n_0_[0]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[4]\,
      O => DC_out_i_4_n_0
    );
DC_out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABFFB"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[2]\,
      O => DC_out_i_5_n_0
    );
DC_out_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D155D1FFD155D1"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[7]\,
      I5 => \stepCount_reg_n_0_[0]\,
      O => DC_out_i_6_n_0
    );
DC_out_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5F5FFBAAFAFA"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[2]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => DC_out_i_7_n_0
    );
DC_out_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFE"
    )
        port map (
      I0 => DC_out_i_9_n_0,
      I1 => DC_out_i_10_n_0,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \tftData_out[7]_i_28_n_0\,
      O => DC_out_i_8_n_0
    );
DC_out_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF8080808080"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => DC_out_i_9_n_0
    );
DC_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => DC_out_i_1_n_0,
      Q => \^dc_out\,
      R => '0'
    );
\FSM_sequential_stateIdx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E6"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => \FSM_sequential_stateIdx[1]_i_2_n_0\,
      I2 => \stateIdx__0\(1),
      I3 => override,
      I4 => nEnable,
      O => \FSM_sequential_stateIdx[0]_i_1_n_0\
    );
\FSM_sequential_stateIdx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => \FSM_sequential_stateIdx[1]_i_2_n_0\,
      I2 => \stateIdx__0\(0),
      I3 => override,
      I4 => nEnable,
      O => \FSM_sequential_stateIdx[1]_i_1_n_0\
    );
\FSM_sequential_stateIdx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0F2F2FF0002F2F"
    )
        port map (
      I0 => start,
      I1 => lastStart,
      I2 => \stateIdx__0\(0),
      I3 => \stateIdx0_carry__0_n_2\,
      I4 => \stateIdx__0\(1),
      I5 => \pixelInFrame[15]_i_3_n_0\,
      O => \FSM_sequential_stateIdx[1]_i_2_n_0\
    );
\FSM_sequential_stateIdx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stateIdx[0]_i_1_n_0\,
      Q => \stateIdx__0\(0),
      R => '0'
    );
\FSM_sequential_stateIdx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_stateIdx[1]_i_1_n_0\,
      Q => \stateIdx__0\(1),
      R => '0'
    );
WRX_bit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEF20E02"
    )
        port map (
      I0 => WRX_bit_reg_n_0,
      I1 => WRX_bit_i_2_n_0,
      I2 => override,
      I3 => WRX_bit_i_3_n_0,
      I4 => WRX_in,
      I5 => nEnable,
      O => WRX_bit_i_1_n_0
    );
WRX_bit_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000EFF"
    )
        port map (
      I0 => WRX_bit_i_27_n_0,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => WRX_bit_i_28_n_0,
      I3 => \stepCount_reg_n_0_[0]\,
      I4 => WRX_bit_i_29_n_0,
      I5 => WRX_bit_i_30_n_0,
      O => WRX_bit_i_10_n_0
    );
WRX_bit_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => WRX_bit_i_31_n_0,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => WRX_bit_i_32_n_0,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => WRX_bit_i_33_n_0,
      I5 => WRX_bit_i_34_n_0,
      O => WRX_bit_i_11_n_0
    );
WRX_bit_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FEBFFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => WRX_bit_i_35_n_0,
      I5 => \stepCount_reg_n_0_[5]\,
      O => WRX_bit_i_12_n_0
    );
WRX_bit_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000010800"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \tftData_out[5]_i_14_n_0\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \stepCount_reg_n_0_[7]\,
      O => WRX_bit_i_13_n_0
    );
WRX_bit_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => WRX_bit_i_38_n_0,
      I1 => \stepCount_reg_n_0_[11]\,
      I2 => WRX_bit_i_39_n_0,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => WRX_bit_i_15_n_0
    );
WRX_bit_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \stepCount_reg_n_0_[10]\,
      I1 => \stepCount_reg_n_0_[11]\,
      O => WRX_bit_i_16_n_0
    );
WRX_bit_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020004C922A92461"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => \stepCount_reg_n_0_[5]\,
      O => WRX_bit_i_17_n_0
    );
WRX_bit_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2A00F5F500080D"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[4]\,
      O => WRX_bit_i_18_n_0
    );
WRX_bit_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBE6FBE699649860"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_19_n_0
    );
WRX_bit_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A020A0200020A02"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => WRX_bit_i_4_n_0,
      I2 => \tftData_out[7]_i_10_n_0\,
      I3 => \stateIdx__0\(0),
      I4 => WRX_bit_i_5_n_0,
      I5 => WRX_bit_i_6_n_0,
      O => WRX_bit_i_2_n_0
    );
WRX_bit_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FEFEE5A7787897"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => \stepCount_reg_n_0_[7]\,
      O => WRX_bit_i_20_n_0
    );
WRX_bit_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFF7FEDFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[4]\,
      O => WRX_bit_i_21_n_0
    );
WRX_bit_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBEFFFBBFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => WRX_bit_i_22_n_0
    );
WRX_bit_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000004"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[4]\,
      O => WRX_bit_i_23_n_0
    );
WRX_bit_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFEFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[4]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_24_n_0
    );
WRX_bit_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54455555FFFFFFFF"
    )
        port map (
      I0 => WRX_bit_i_40_n_0,
      I1 => WRX_bit_i_41_n_0,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[8]\,
      I4 => \stepCount_reg_n_0_[4]\,
      I5 => \tftData_out[1]_i_8_n_0\,
      O => WRX_bit_i_25_n_0
    );
WRX_bit_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000010"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[4]\,
      O => WRX_bit_i_26_n_0
    );
WRX_bit_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF7FEFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[4]\,
      I5 => WRX_bit_i_42_n_0,
      O => WRX_bit_i_27_n_0
    );
WRX_bit_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000214"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[8]\,
      I4 => WRX_bit_i_43_n_0,
      O => WRX_bit_i_28_n_0
    );
WRX_bit_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022000340"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => WRX_bit_i_44_n_0,
      O => WRX_bit_i_29_n_0
    );
WRX_bit_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F2000000F2FF"
    )
        port map (
      I0 => WRX_bit_i_7_n_0,
      I1 => WRX_bit_reg_i_8_n_0,
      I2 => WRX_bit_i_9_n_0,
      I3 => \stateIdx__0\(0),
      I4 => \tftData_out[7]_i_10_n_0\,
      I5 => WRX_bit_i_10_n_0,
      O => WRX_bit_i_3_n_0
    );
WRX_bit_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002400840"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[2]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => WRX_bit_i_45_n_0,
      O => WRX_bit_i_30_n_0
    );
WRX_bit_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFBFFDFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_31_n_0
    );
WRX_bit_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFEFFFFFFBFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => WRX_bit_i_32_n_0
    );
WRX_bit_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[4]\,
      O => WRX_bit_i_33_n_0
    );
WRX_bit_i_34: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[5]\,
      O => WRX_bit_i_34_n_0
    );
WRX_bit_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[8]\,
      O => WRX_bit_i_35_n_0
    );
WRX_bit_i_36: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFDDEFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => WRX_bit_i_36_n_0
    );
WRX_bit_i_37: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFF7FFFFFDFF2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => WRX_bit_i_37_n_0
    );
WRX_bit_i_38: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \stepCount_reg_n_0_[10]\,
      I1 => \stepCount_reg_n_0_[9]\,
      O => WRX_bit_i_38_n_0
    );
WRX_bit_i_39: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[2]\,
      I5 => \stepCount_reg_n_0_[0]\,
      O => WRX_bit_i_39_n_0
    );
WRX_bit_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => WRX_bit_i_11_n_0,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => WRX_bit_i_12_n_0,
      I3 => WRX_bit_i_13_n_0,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => WRX_bit_reg_i_14_n_0,
      O => WRX_bit_i_4_n_0
    );
WRX_bit_i_40: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[2]\,
      O => WRX_bit_i_40_n_0
    );
WRX_bit_i_41: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_41_n_0
    );
WRX_bit_i_42: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_42_n_0
    );
WRX_bit_i_43: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEFFFFFFE7FFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_43_n_0
    );
WRX_bit_i_44: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFDFFFDF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[1]\,
      I3 => \stepCount_reg_n_0_[0]\,
      I4 => \stepCount_reg_n_0_[7]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => WRX_bit_i_44_n_0
    );
WRX_bit_i_45: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFD9"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[0]\,
      I5 => \stepCount_reg_n_0_[1]\,
      O => WRX_bit_i_45_n_0
    );
WRX_bit_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \stepCount_reg_n_0_[15]\,
      I1 => WRX_bit_i_15_n_0,
      I2 => WRX_bit_i_16_n_0,
      I3 => \stepCount_reg_n_0_[12]\,
      I4 => \stepCount_reg_n_0_[13]\,
      I5 => \stepCount_reg_n_0_[14]\,
      O => WRX_bit_i_5_n_0
    );
WRX_bit_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000414100"
    )
        port map (
      I0 => WRX_bit_i_17_n_0,
      I1 => WRX_bit_i_18_n_0,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => WRX_bit_i_19_n_0,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => WRX_bit_i_20_n_0,
      O => WRX_bit_i_6_n_0
    );
WRX_bit_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[0]\,
      O => WRX_bit_i_7_n_0
    );
WRX_bit_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0F0B0F0B000B0F"
    )
        port map (
      I0 => WRX_bit_i_23_n_0,
      I1 => WRX_bit_i_24_n_0,
      I2 => WRX_bit_i_25_n_0,
      I3 => \stepCount_reg_n_0_[2]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => WRX_bit_i_26_n_0,
      O => WRX_bit_i_9_n_0
    );
WRX_bit_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => WRX_bit_i_1_n_0,
      Q => WRX_bit_reg_n_0,
      R => '0'
    );
WRX_bit_reg_i_14: unisim.vcomponents.MUXF7
     port map (
      I0 => WRX_bit_i_36_n_0,
      I1 => WRX_bit_i_37_n_0,
      O => WRX_bit_reg_i_14_n_0,
      S => \stepCount_reg_n_0_[2]\
    );
WRX_bit_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => WRX_bit_i_21_n_0,
      I1 => WRX_bit_i_22_n_0,
      O => WRX_bit_reg_i_8_n_0,
      S => \stepCount_reg_n_0_[2]\
    );
WRX_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => WRX_bit_reg_n_0,
      Q => WRX_out,
      R => '0'
    );
\address[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(10),
      O => \address[10]_i_1_n_0\
    );
\address[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(11),
      O => \address[11]_i_1_n_0\
    );
\address[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(12),
      O => \address[12]_i_1_n_0\
    );
\address[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(13),
      O => \address[13]_i_1_n_0\
    );
\address[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(14),
      O => \address[14]_i_1_n_0\
    );
\address[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(15),
      O => \address[15]_i_1_n_0\
    );
\address[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(16),
      O => \address[16]_i_1_n_0\
    );
\address[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(17),
      O => \address[17]_i_1_n_0\
    );
\address[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(18),
      O => \address[18]_i_1_n_0\
    );
\address[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(19),
      O => \address[19]_i_1_n_0\
    );
\address[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(20),
      O => \address[20]_i_1_n_0\
    );
\address[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(21),
      O => \address[21]_i_1_n_0\
    );
\address[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(22),
      O => \address[22]_i_1_n_0\
    );
\address[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(23),
      O => \address[23]_i_1_n_0\
    );
\address[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(24),
      O => \address[24]_i_1_n_0\
    );
\address[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(25),
      O => \address[25]_i_1_n_0\
    );
\address[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(26),
      O => \address[26]_i_1_n_0\
    );
\address[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(27),
      O => \address[27]_i_1_n_0\
    );
\address[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(28),
      O => \address[28]_i_1_n_0\
    );
\address[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(29),
      O => \address[29]_i_1_n_0\
    );
\address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(2),
      O => \address[2]_i_1_n_0\
    );
\address[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(30),
      O => \address[30]_i_1_n_0\
    );
\address[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000400FFFF"
    )
        port map (
      I0 => lastStart,
      I1 => start,
      I2 => \stateIdx__0\(1),
      I3 => \stateIdx__0\(0),
      I4 => \address[31]_i_3_n_0\,
      I5 => override,
      O => \address[31]_i_1_n_0\
    );
\address[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(31),
      O => \address[31]_i_2_n_0\
    );
\address[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7D5F7D5F7D5F7F7"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => \stateIdx__0\(0),
      I2 => \pixel7[15]_i_3_n_0\,
      I3 => \tftData_out[7]_i_10_n_0\,
      I4 => \frame_height[7]_i_2_n_0\,
      I5 => \pixelInFrame[15]_i_4_n_0\,
      O => \address[31]_i_3_n_0\
    );
\address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(3),
      O => \address[3]_i_1_n_0\
    );
\address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(4),
      O => \address[4]_i_1_n_0\
    );
\address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(5),
      O => \address[5]_i_1_n_0\
    );
\address[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(6),
      O => \address[6]_i_1_n_0\
    );
\address[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(7),
      O => \address[7]_i_1_n_0\
    );
\address[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(8),
      O => \address[8]_i_1_n_0\
    );
\address[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => in22(9),
      O => \address[9]_i_1_n_0\
    );
\address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[10]_i_1_n_0\,
      Q => \address_reg_n_0_[10]\,
      R => nEnable
    );
\address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[11]_i_1_n_0\,
      Q => \address_reg_n_0_[11]\,
      R => nEnable
    );
\address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[12]_i_1_n_0\,
      Q => \address_reg_n_0_[12]\,
      R => nEnable
    );
\address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[13]_i_1_n_0\,
      Q => \address_reg_n_0_[13]\,
      R => nEnable
    );
\address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[14]_i_1_n_0\,
      Q => \address_reg_n_0_[14]\,
      R => nEnable
    );
\address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[15]_i_1_n_0\,
      Q => \address_reg_n_0_[15]\,
      R => nEnable
    );
\address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[16]_i_1_n_0\,
      Q => \address_reg_n_0_[16]\,
      R => nEnable
    );
\address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[17]_i_1_n_0\,
      Q => \address_reg_n_0_[17]\,
      R => nEnable
    );
\address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[18]_i_1_n_0\,
      Q => \address_reg_n_0_[18]\,
      R => nEnable
    );
\address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[19]_i_1_n_0\,
      Q => \address_reg_n_0_[19]\,
      R => nEnable
    );
\address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[20]_i_1_n_0\,
      Q => \address_reg_n_0_[20]\,
      R => nEnable
    );
\address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[21]_i_1_n_0\,
      Q => \address_reg_n_0_[21]\,
      R => nEnable
    );
\address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[22]_i_1_n_0\,
      Q => \address_reg_n_0_[22]\,
      R => nEnable
    );
\address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[23]_i_1_n_0\,
      Q => \address_reg_n_0_[23]\,
      R => nEnable
    );
\address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[24]_i_1_n_0\,
      Q => \address_reg_n_0_[24]\,
      R => nEnable
    );
\address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[25]_i_1_n_0\,
      Q => \address_reg_n_0_[25]\,
      R => nEnable
    );
\address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[26]_i_1_n_0\,
      Q => \address_reg_n_0_[26]\,
      R => nEnable
    );
\address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[27]_i_1_n_0\,
      Q => \address_reg_n_0_[27]\,
      R => nEnable
    );
\address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[28]_i_1_n_0\,
      Q => \address_reg_n_0_[28]\,
      R => nEnable
    );
\address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[29]_i_1_n_0\,
      Q => \address_reg_n_0_[29]\,
      R => nEnable
    );
\address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[2]_i_1_n_0\,
      Q => \address_reg_n_0_[2]\,
      R => nEnable
    );
\address_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[30]_i_1_n_0\,
      Q => \address_reg_n_0_[30]\,
      R => nEnable
    );
\address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[31]_i_2_n_0\,
      Q => \address_reg_n_0_[31]\,
      R => nEnable
    );
\address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[3]_i_1_n_0\,
      Q => \address_reg_n_0_[3]\,
      R => nEnable
    );
\address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[4]_i_1_n_0\,
      Q => \address_reg_n_0_[4]\,
      R => nEnable
    );
\address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[5]_i_1_n_0\,
      Q => \address_reg_n_0_[5]\,
      R => nEnable
    );
\address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[6]_i_1_n_0\,
      Q => \address_reg_n_0_[6]\,
      R => nEnable
    );
\address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[7]_i_1_n_0\,
      Q => \address_reg_n_0_[7]\,
      R => nEnable
    );
\address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[8]_i_1_n_0\,
      Q => \address_reg_n_0_[8]\,
      R => nEnable
    );
\address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \address[31]_i_1_n_0\,
      D => \address[9]_i_1_n_0\,
      Q => \address_reg_n_0_[9]\,
      R => nEnable
    );
\bramAddress_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[10]\,
      Q => bramAddress(8),
      R => '0'
    );
\bramAddress_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[11]\,
      Q => bramAddress(9),
      R => '0'
    );
\bramAddress_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[12]\,
      Q => bramAddress(10),
      R => '0'
    );
\bramAddress_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[13]\,
      Q => bramAddress(11),
      R => '0'
    );
\bramAddress_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[14]\,
      Q => bramAddress(12),
      R => '0'
    );
\bramAddress_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[15]\,
      Q => bramAddress(13),
      R => '0'
    );
\bramAddress_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[16]\,
      Q => bramAddress(14),
      R => '0'
    );
\bramAddress_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[17]\,
      Q => bramAddress(15),
      R => '0'
    );
\bramAddress_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[18]\,
      Q => bramAddress(16),
      R => '0'
    );
\bramAddress_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[19]\,
      Q => bramAddress(17),
      R => '0'
    );
\bramAddress_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[20]\,
      Q => bramAddress(18),
      R => '0'
    );
\bramAddress_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[21]\,
      Q => bramAddress(19),
      R => '0'
    );
\bramAddress_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[22]\,
      Q => bramAddress(20),
      R => '0'
    );
\bramAddress_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[23]\,
      Q => bramAddress(21),
      R => '0'
    );
\bramAddress_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[24]\,
      Q => bramAddress(22),
      R => '0'
    );
\bramAddress_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[25]\,
      Q => bramAddress(23),
      R => '0'
    );
\bramAddress_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[26]\,
      Q => bramAddress(24),
      R => '0'
    );
\bramAddress_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[27]\,
      Q => bramAddress(25),
      R => '0'
    );
\bramAddress_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[28]\,
      Q => bramAddress(26),
      R => '0'
    );
\bramAddress_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[29]\,
      Q => bramAddress(27),
      R => '0'
    );
\bramAddress_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[2]\,
      Q => bramAddress(0),
      R => '0'
    );
\bramAddress_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[30]\,
      Q => bramAddress(28),
      R => '0'
    );
\bramAddress_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[31]\,
      Q => bramAddress(29),
      R => '0'
    );
\bramAddress_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[3]\,
      Q => bramAddress(1),
      R => '0'
    );
\bramAddress_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[4]\,
      Q => bramAddress(2),
      R => '0'
    );
\bramAddress_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[5]\,
      Q => bramAddress(3),
      R => '0'
    );
\bramAddress_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[6]\,
      Q => bramAddress(4),
      R => '0'
    );
\bramAddress_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[7]\,
      Q => bramAddress(5),
      R => '0'
    );
\bramAddress_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[8]\,
      Q => bramAddress(6),
      R => '0'
    );
\bramAddress_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_reg_n_0_[9]\,
      Q => bramAddress(7),
      R => '0'
    );
bramEN_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAEAA"
    )
        port map (
      I0 => \^bramen\,
      I1 => bramEN0,
      I2 => \stateIdx__0\(1),
      I3 => \stateIdx__0\(0),
      I4 => override,
      I5 => nEnable,
      O => bramEN_i_1_n_0
    );
bramEN_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => start,
      I1 => lastStart,
      O => bramEN0
    );
bramEN_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bramEN_i_1_n_0,
      Q => \^bramen\,
      R => '0'
    );
\frame_height[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stateIdx__0\(0),
      I2 => nEnable,
      I3 => override,
      I4 => \stateIdx__0\(1),
      I5 => \frame_height[7]_i_2_n_0\,
      O => \frame_height[7]_i_1_n_0\
    );
\frame_height[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \frame_height[7]_i_3_n_0\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[0]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \frame_height[7]_i_2_n_0\
    );
\frame_height[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[5]\,
      O => \frame_height[7]_i_3_n_0\
    );
\frame_height_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(0),
      Q => frame_height(0),
      R => '0'
    );
\frame_height_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(1),
      Q => frame_height(1),
      R => '0'
    );
\frame_height_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(2),
      Q => frame_height(2),
      R => '0'
    );
\frame_height_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(3),
      Q => frame_height(3),
      R => '0'
    );
\frame_height_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(4),
      Q => frame_height(4),
      R => '0'
    );
\frame_height_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(5),
      Q => frame_height(5),
      R => '0'
    );
\frame_height_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(6),
      Q => frame_height(6),
      R => '0'
    );
\frame_height_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(7),
      Q => frame_height(7),
      R => '0'
    );
\frame_width_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(8),
      Q => \frame_width_reg_n_0_[0]\,
      R => '0'
    );
\frame_width_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(9),
      Q => \frame_width_reg_n_0_[1]\,
      R => '0'
    );
\frame_width_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(10),
      Q => \frame_width_reg_n_0_[2]\,
      R => '0'
    );
\frame_width_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(11),
      Q => \frame_width_reg_n_0_[3]\,
      R => '0'
    );
\frame_width_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(12),
      Q => \frame_width_reg_n_0_[4]\,
      R => '0'
    );
\frame_width_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(13),
      Q => \frame_width_reg_n_0_[5]\,
      R => '0'
    );
\frame_width_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(14),
      Q => \frame_width_reg_n_0_[6]\,
      R => '0'
    );
\frame_width_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(15),
      Q => \frame_width_reg_n_0_[7]\,
      R => '0'
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_height(6),
      I1 => \y0_reg_n_0_[6]\,
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_height(5),
      I1 => \y0_reg_n_0_[5]\,
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_height(4),
      I1 => \y0_reg_n_0_[4]\,
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_height(3),
      I1 => \y0_reg_n_0_[3]\,
      O => \i___0_carry__0_i_4_n_0\
    );
\i___0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \y0_reg_n_0_[6]\,
      I1 => frame_height(6),
      I2 => frame_height(7),
      I3 => \y0_reg_n_0_[7]\,
      O => \i___0_carry__0_i_5_n_0\
    );
\i___0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \y0_reg_n_0_[5]\,
      I1 => frame_height(5),
      I2 => frame_height(6),
      I3 => \y0_reg_n_0_[6]\,
      O => \i___0_carry__0_i_6_n_0\
    );
\i___0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \y0_reg_n_0_[4]\,
      I1 => frame_height(4),
      I2 => frame_height(5),
      I3 => \y0_reg_n_0_[5]\,
      O => \i___0_carry__0_i_7_n_0\
    );
\i___0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \y0_reg_n_0_[3]\,
      I1 => frame_height(3),
      I2 => frame_height(4),
      I3 => \y0_reg_n_0_[4]\,
      O => \i___0_carry__0_i_8_n_0\
    );
\i___0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \y0_reg_n_0_[7]\,
      I1 => frame_height(7),
      O => \i___0_carry__1_i_1_n_0\
    );
\i___0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame_height(7),
      I1 => \y0_reg_n_0_[7]\,
      O => \i___0_carry__1_i_2_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_height(2),
      I1 => \y0_reg_n_0_[2]\,
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \y0_reg_n_0_[2]\,
      I1 => frame_height(2),
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => frame_height(0),
      I1 => \y0_reg_n_0_[0]\,
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => frame_height(0),
      I1 => \y0_reg_n_0_[0]\,
      O => \i___0_carry_i_4_n_0\
    );
\i___0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \y0_reg_n_0_[2]\,
      I1 => frame_height(2),
      I2 => frame_height(3),
      I3 => \y0_reg_n_0_[3]\,
      O => \i___0_carry_i_5_n_0\
    );
\i___0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => frame_height(2),
      I1 => \y0_reg_n_0_[2]\,
      I2 => \y0_reg_n_0_[1]\,
      I3 => frame_height(1),
      O => \i___0_carry_i_6_n_0\
    );
\i___0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \y0_reg_n_0_[0]\,
      I1 => frame_height(0),
      I2 => \y0_reg_n_0_[1]\,
      I3 => frame_height(1),
      O => \i___0_carry_i_7_n_0\
    );
\i___0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y0_reg_n_0_[0]\,
      I1 => frame_height(0),
      O => \i___0_carry_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \address_reg_n_0_[2]\,
      O => \i__carry_i_1_n_0\
    );
lastStart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => start,
      I1 => \stateIdx__0\(0),
      I2 => override,
      I3 => nEnable,
      I4 => \stateIdx__0\(1),
      I5 => lastStart,
      O => lastStart_i_1_n_0
    );
lastStart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => lastStart_i_1_n_0,
      Q => lastStart,
      R => '0'
    );
\minusOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp__0_carry_n_0\,
      CO(2) => \minusOp__0_carry_n_1\,
      CO(1) => \minusOp__0_carry_n_2\,
      CO(0) => \minusOp__0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \minusOp__0_carry_i_1_n_0\,
      DI(2) => \minusOp__0_carry_i_2_n_0\,
      DI(1) => \minusOp__0_carry_i_3_n_0\,
      DI(0) => \minusOp__0_carry_i_4_n_0\,
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => \minusOp__0_carry_i_5_n_0\,
      S(2) => \minusOp__0_carry_i_6_n_0\,
      S(1) => \minusOp__0_carry_i_7_n_0\,
      S(0) => \minusOp__0_carry_i_8_n_0\
    );
\minusOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp__0_carry_n_0\,
      CO(3) => \minusOp__0_carry__0_n_0\,
      CO(2) => \minusOp__0_carry__0_n_1\,
      CO(1) => \minusOp__0_carry__0_n_2\,
      CO(0) => \minusOp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \minusOp__0_carry__0_i_1_n_0\,
      DI(2) => \minusOp__0_carry__0_i_2_n_0\,
      DI(1) => \minusOp__0_carry__0_i_3_n_0\,
      DI(0) => \minusOp__0_carry__0_i_4_n_0\,
      O(3 downto 0) => minusOp(7 downto 4),
      S(3) => \minusOp__0_carry__0_i_5_n_0\,
      S(2) => \minusOp__0_carry__0_i_6_n_0\,
      S(1) => \minusOp__0_carry__0_i_7_n_0\,
      S(0) => \minusOp__0_carry__0_i_8_n_0\
    );
\minusOp__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => \x0_reg_n_0_[6]\,
      O => \minusOp__0_carry__0_i_1_n_0\
    );
\minusOp__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \frame_width_reg_n_0_[5]\,
      I1 => \x0_reg_n_0_[5]\,
      O => \minusOp__0_carry__0_i_2_n_0\
    );
\minusOp__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \frame_width_reg_n_0_[4]\,
      I1 => \x0_reg_n_0_[4]\,
      O => \minusOp__0_carry__0_i_3_n_0\
    );
\minusOp__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \frame_width_reg_n_0_[3]\,
      I1 => \x0_reg_n_0_[3]\,
      O => \minusOp__0_carry__0_i_4_n_0\
    );
\minusOp__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \x0_reg_n_0_[6]\,
      I1 => \frame_width_reg_n_0_[6]\,
      I2 => \x0_reg_n_0_[7]\,
      I3 => \frame_width_reg_n_0_[7]\,
      O => \minusOp__0_carry__0_i_5_n_0\
    );
\minusOp__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \x0_reg_n_0_[5]\,
      I1 => \frame_width_reg_n_0_[5]\,
      I2 => \frame_width_reg_n_0_[6]\,
      I3 => \x0_reg_n_0_[6]\,
      O => \minusOp__0_carry__0_i_6_n_0\
    );
\minusOp__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \x0_reg_n_0_[4]\,
      I1 => \frame_width_reg_n_0_[4]\,
      I2 => \frame_width_reg_n_0_[5]\,
      I3 => \x0_reg_n_0_[5]\,
      O => \minusOp__0_carry__0_i_7_n_0\
    );
\minusOp__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \x0_reg_n_0_[3]\,
      I1 => \frame_width_reg_n_0_[3]\,
      I2 => \frame_width_reg_n_0_[4]\,
      I3 => \x0_reg_n_0_[4]\,
      O => \minusOp__0_carry__0_i_8_n_0\
    );
\minusOp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp__0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_minusOp__0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \minusOp__0_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_minusOp__0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => minusOp(15),
      O(0) => minusOp(8),
      S(3 downto 1) => B"001",
      S(0) => \minusOp__0_carry__1_i_2_n_0\
    );
\minusOp__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \x0_reg_n_0_[7]\,
      I1 => \frame_width_reg_n_0_[7]\,
      O => \minusOp__0_carry__1_i_1_n_0\
    );
\minusOp__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \frame_width_reg_n_0_[7]\,
      I1 => \x0_reg_n_0_[7]\,
      O => \minusOp__0_carry__1_i_2_n_0\
    );
\minusOp__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \frame_width_reg_n_0_[2]\,
      I1 => \x0_reg_n_0_[2]\,
      O => \minusOp__0_carry_i_1_n_0\
    );
\minusOp__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \x0_reg_n_0_[2]\,
      I1 => \frame_width_reg_n_0_[2]\,
      O => \minusOp__0_carry_i_2_n_0\
    );
\minusOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => \x0_reg_n_0_[0]\,
      O => \minusOp__0_carry_i_3_n_0\
    );
\minusOp__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => \x0_reg_n_0_[0]\,
      O => \minusOp__0_carry_i_4_n_0\
    );
\minusOp__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => \x0_reg_n_0_[2]\,
      I1 => \frame_width_reg_n_0_[2]\,
      I2 => \x0_reg_n_0_[3]\,
      I3 => \frame_width_reg_n_0_[3]\,
      O => \minusOp__0_carry_i_5_n_0\
    );
\minusOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \frame_width_reg_n_0_[2]\,
      I1 => \x0_reg_n_0_[2]\,
      I2 => \x0_reg_n_0_[1]\,
      I3 => \frame_width_reg_n_0_[1]\,
      O => \minusOp__0_carry_i_6_n_0\
    );
\minusOp__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => \x0_reg_n_0_[0]\,
      I1 => \frame_width_reg_n_0_[0]\,
      I2 => \x0_reg_n_0_[1]\,
      I3 => \frame_width_reg_n_0_[1]\,
      O => \minusOp__0_carry_i_7_n_0\
    );
\minusOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x0_reg_n_0_[0]\,
      I1 => \frame_width_reg_n_0_[0]\,
      O => \minusOp__0_carry_i_8_n_0\
    );
\minusOp_inferred__0/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i___0_carry_n_0\,
      CO(2) => \minusOp_inferred__0/i___0_carry_n_1\,
      CO(1) => \minusOp_inferred__0/i___0_carry_n_2\,
      CO(0) => \minusOp_inferred__0/i___0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \i___0_carry_i_1_n_0\,
      DI(2) => \i___0_carry_i_2_n_0\,
      DI(1) => \i___0_carry_i_3_n_0\,
      DI(0) => \i___0_carry_i_4_n_0\,
      O(3) => \minusOp_inferred__0/i___0_carry_n_4\,
      O(2) => \minusOp_inferred__0/i___0_carry_n_5\,
      O(1) => \minusOp_inferred__0/i___0_carry_n_6\,
      O(0) => \minusOp_inferred__0/i___0_carry_n_7\,
      S(3) => \i___0_carry_i_5_n_0\,
      S(2) => \i___0_carry_i_6_n_0\,
      S(1) => \i___0_carry_i_7_n_0\,
      S(0) => \i___0_carry_i_8_n_0\
    );
\minusOp_inferred__0/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i___0_carry_n_0\,
      CO(3) => \minusOp_inferred__0/i___0_carry__0_n_0\,
      CO(2) => \minusOp_inferred__0/i___0_carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i___0_carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__0_i_1_n_0\,
      DI(2) => \i___0_carry__0_i_2_n_0\,
      DI(1) => \i___0_carry__0_i_3_n_0\,
      DI(0) => \i___0_carry__0_i_4_n_0\,
      O(3) => \minusOp_inferred__0/i___0_carry__0_n_4\,
      O(2) => \minusOp_inferred__0/i___0_carry__0_n_5\,
      O(1) => \minusOp_inferred__0/i___0_carry__0_n_6\,
      O(0) => \minusOp_inferred__0/i___0_carry__0_n_7\,
      S(3) => \i___0_carry__0_i_5_n_0\,
      S(2) => \i___0_carry__0_i_6_n_0\,
      S(1) => \i___0_carry__0_i_7_n_0\,
      S(0) => \i___0_carry__0_i_8_n_0\
    );
\minusOp_inferred__0/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i___0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_minusOp_inferred__0/i___0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp_inferred__0/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___0_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_minusOp_inferred__0/i___0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \minusOp_inferred__0/i___0_carry__1_n_6\,
      O(0) => \minusOp_inferred__0/i___0_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \i___0_carry__1_i_2_n_0\
    );
\p_0_out_inferred__4/tftData_out[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000200004000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[1]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => \p_0_out_inferred__4/tftData_out[7]_i_29_n_0\
    );
\p_0_out_inferred__4/tftData_out[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000800000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[1]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => \p_0_out_inferred__4/tftData_out[7]_i_30_n_0\
    );
\p_0_out_inferred__4/tftData_out[7]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000084001"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \p_0_out_inferred__4/tftData_out[7]_i_44_n_0\
    );
\p_0_out_inferred__4/tftData_out[7]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2004001000000000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \p_0_out_inferred__4/tftData_out[7]_i_45_n_0\
    );
\p_0_out_inferred__4/tftData_out[7]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080020000000000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \p_0_out_inferred__4/tftData_out[7]_i_46_n_0\
    );
\p_0_out_inferred__4/tftData_out[7]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080020040"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \p_0_out_inferred__4/tftData_out[7]_i_47_n_0\
    );
\p_0_out_inferred__4/tftData_out_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__4/tftData_out[7]_i_29_n_0\,
      I1 => \p_0_out_inferred__4/tftData_out[7]_i_30_n_0\,
      O => \p_0_out_inferred__4/tftData_out_reg[7]_i_13_n_0\,
      S => \stepCount_reg_n_0_[0]\
    );
\p_0_out_inferred__4/tftData_out_reg[7]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \p_0_out_inferred__4/tftData_out_reg[7]_i_31_n_0\,
      I1 => \p_0_out_inferred__4/tftData_out_reg[7]_i_32_n_0\,
      O => \p_0_out_inferred__4/tftData_out_reg[7]_i_14_n_0\,
      S => \stepCount_reg_n_0_[8]\
    );
\p_0_out_inferred__4/tftData_out_reg[7]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__4/tftData_out[7]_i_44_n_0\,
      I1 => \p_0_out_inferred__4/tftData_out[7]_i_45_n_0\,
      O => \p_0_out_inferred__4/tftData_out_reg[7]_i_31_n_0\,
      S => \stepCount_reg_n_0_[0]\
    );
\p_0_out_inferred__4/tftData_out_reg[7]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \p_0_out_inferred__4/tftData_out[7]_i_46_n_0\,
      I1 => \p_0_out_inferred__4/tftData_out[7]_i_47_n_0\,
      O => \p_0_out_inferred__4/tftData_out_reg[7]_i_32_n_0\,
      S => \stepCount_reg_n_0_[0]\
    );
\pixel0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(28),
      I3 => bramData(29),
      O => \pixel0[0]_i_1_n_0\
    );
\pixel0[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(30),
      I1 => bramData(31),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[10]_i_1_n_0\
    );
\pixel0[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(29),
      I2 => bramData(30),
      I3 => bramData(28),
      O => \pixel0[11]_i_1_n_0\
    );
\pixel0[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(29),
      I2 => bramData(30),
      I3 => bramData(28),
      O => \pixel0[12]_i_1_n_0\
    );
\pixel0[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(30),
      I1 => bramData(31),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[13]_i_1_n_0\
    );
\pixel0[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(29),
      I2 => bramData(30),
      I3 => bramData(28),
      O => \pixel0[14]_i_1_n_0\
    );
\pixel0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(28),
      I3 => bramData(29),
      O => \pixel0[15]_i_1_n_0\
    );
\pixel0[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(28),
      I3 => bramData(29),
      O => \pixel0[1]_i_1_n_0\
    );
\pixel0[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(29),
      I1 => bramData(31),
      I2 => bramData(30),
      O => \pixel0[2]_i_1_n_0\
    );
\pixel0[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[3]_i_1_n_0\
    );
\pixel0[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(28),
      I3 => bramData(29),
      O => \pixel0[4]_i_1_n_0\
    );
\pixel0[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[5]_i_1_n_0\
    );
\pixel0[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[6]_i_1_n_0\
    );
\pixel0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[7]_i_1_n_0\
    );
\pixel0[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(30),
      I2 => bramData(29),
      I3 => bramData(28),
      O => \pixel0[8]_i_1_n_0\
    );
\pixel0[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(31),
      I1 => bramData(29),
      I2 => bramData(28),
      O => \pixel0[9]_i_1_n_0\
    );
\pixel0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[0]_i_1_n_0\,
      Q => \pixel0__0\(0),
      R => '0'
    );
\pixel0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[10]_i_1_n_0\,
      Q => \pixel0__0\(10),
      R => '0'
    );
\pixel0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[11]_i_1_n_0\,
      Q => \pixel0__0\(11),
      R => '0'
    );
\pixel0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[12]_i_1_n_0\,
      Q => \pixel0__0\(12),
      R => '0'
    );
\pixel0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[13]_i_1_n_0\,
      Q => \pixel0__0\(13),
      R => '0'
    );
\pixel0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[14]_i_1_n_0\,
      Q => \pixel0__0\(14),
      R => '0'
    );
\pixel0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[15]_i_1_n_0\,
      Q => \pixel0__0\(15),
      R => '0'
    );
\pixel0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[1]_i_1_n_0\,
      Q => \pixel0__0\(1),
      R => '0'
    );
\pixel0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[2]_i_1_n_0\,
      Q => \pixel0__0\(2),
      R => '0'
    );
\pixel0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[3]_i_1_n_0\,
      Q => \pixel0__0\(3),
      R => '0'
    );
\pixel0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[4]_i_1_n_0\,
      Q => \pixel0__0\(4),
      R => '0'
    );
\pixel0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[5]_i_1_n_0\,
      Q => \pixel0__0\(5),
      R => '0'
    );
\pixel0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[6]_i_1_n_0\,
      Q => \pixel0__0\(6),
      R => '0'
    );
\pixel0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[7]_i_1_n_0\,
      Q => \pixel0__0\(7),
      R => '0'
    );
\pixel0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[8]_i_1_n_0\,
      Q => \pixel0__0\(8),
      R => '0'
    );
\pixel0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel0[9]_i_1_n_0\,
      Q => \pixel0__0\(9),
      R => '0'
    );
\pixel1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(24),
      I3 => bramData(25),
      O => \pixel1[0]_i_1_n_0\
    );
\pixel1[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(26),
      I1 => bramData(27),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[10]_i_1_n_0\
    );
\pixel1[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(25),
      I2 => bramData(26),
      I3 => bramData(24),
      O => \pixel1[11]_i_1_n_0\
    );
\pixel1[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(25),
      I2 => bramData(26),
      I3 => bramData(24),
      O => \pixel1[12]_i_1_n_0\
    );
\pixel1[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(26),
      I1 => bramData(27),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[13]_i_1_n_0\
    );
\pixel1[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(25),
      I2 => bramData(26),
      I3 => bramData(24),
      O => \pixel1[14]_i_1_n_0\
    );
\pixel1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(24),
      I3 => bramData(25),
      O => \pixel1[15]_i_1_n_0\
    );
\pixel1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(24),
      I3 => bramData(25),
      O => \pixel1[1]_i_1_n_0\
    );
\pixel1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(25),
      I1 => bramData(27),
      I2 => bramData(26),
      O => \pixel1[2]_i_1_n_0\
    );
\pixel1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[3]_i_1_n_0\
    );
\pixel1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(24),
      I3 => bramData(25),
      O => \pixel1[4]_i_1_n_0\
    );
\pixel1[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[5]_i_1_n_0\
    );
\pixel1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[6]_i_1_n_0\
    );
\pixel1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[7]_i_1_n_0\
    );
\pixel1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(26),
      I2 => bramData(25),
      I3 => bramData(24),
      O => \pixel1[8]_i_1_n_0\
    );
\pixel1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(27),
      I1 => bramData(25),
      I2 => bramData(24),
      O => \pixel1[9]_i_1_n_0\
    );
\pixel1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[0]_i_1_n_0\,
      Q => pixel1(0),
      R => '0'
    );
\pixel1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[10]_i_1_n_0\,
      Q => pixel1(10),
      R => '0'
    );
\pixel1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[11]_i_1_n_0\,
      Q => pixel1(11),
      R => '0'
    );
\pixel1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[12]_i_1_n_0\,
      Q => pixel1(12),
      R => '0'
    );
\pixel1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[13]_i_1_n_0\,
      Q => pixel1(13),
      R => '0'
    );
\pixel1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[14]_i_1_n_0\,
      Q => pixel1(14),
      R => '0'
    );
\pixel1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[15]_i_1_n_0\,
      Q => pixel1(15),
      R => '0'
    );
\pixel1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[1]_i_1_n_0\,
      Q => pixel1(1),
      R => '0'
    );
\pixel1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[2]_i_1_n_0\,
      Q => pixel1(2),
      R => '0'
    );
\pixel1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[3]_i_1_n_0\,
      Q => pixel1(3),
      R => '0'
    );
\pixel1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[4]_i_1_n_0\,
      Q => pixel1(4),
      R => '0'
    );
\pixel1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[5]_i_1_n_0\,
      Q => pixel1(5),
      R => '0'
    );
\pixel1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[6]_i_1_n_0\,
      Q => pixel1(6),
      R => '0'
    );
\pixel1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[7]_i_1_n_0\,
      Q => pixel1(7),
      R => '0'
    );
\pixel1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[8]_i_1_n_0\,
      Q => pixel1(8),
      R => '0'
    );
\pixel1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel1[9]_i_1_n_0\,
      Q => pixel1(9),
      R => '0'
    );
\pixel2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(20),
      I3 => bramData(21),
      O => \pixel2[0]_i_1_n_0\
    );
\pixel2[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(22),
      I1 => bramData(23),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[10]_i_1_n_0\
    );
\pixel2[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(21),
      I2 => bramData(22),
      I3 => bramData(20),
      O => \pixel2[11]_i_1_n_0\
    );
\pixel2[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(21),
      I2 => bramData(22),
      I3 => bramData(20),
      O => \pixel2[12]_i_1_n_0\
    );
\pixel2[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(22),
      I1 => bramData(23),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[13]_i_1_n_0\
    );
\pixel2[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(21),
      I2 => bramData(22),
      I3 => bramData(20),
      O => \pixel2[14]_i_1_n_0\
    );
\pixel2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(20),
      I3 => bramData(21),
      O => \pixel2[15]_i_1_n_0\
    );
\pixel2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(20),
      I3 => bramData(21),
      O => \pixel2[1]_i_1_n_0\
    );
\pixel2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(21),
      I1 => bramData(23),
      I2 => bramData(22),
      O => \pixel2[2]_i_1_n_0\
    );
\pixel2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[3]_i_1_n_0\
    );
\pixel2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(20),
      I3 => bramData(21),
      O => \pixel2[4]_i_1_n_0\
    );
\pixel2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[5]_i_1_n_0\
    );
\pixel2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[6]_i_1_n_0\
    );
\pixel2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[7]_i_1_n_0\
    );
\pixel2[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(22),
      I2 => bramData(21),
      I3 => bramData(20),
      O => \pixel2[8]_i_1_n_0\
    );
\pixel2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(23),
      I1 => bramData(21),
      I2 => bramData(20),
      O => \pixel2[9]_i_1_n_0\
    );
\pixel2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[0]_i_1_n_0\,
      Q => pixel2(0),
      R => '0'
    );
\pixel2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[10]_i_1_n_0\,
      Q => pixel2(10),
      R => '0'
    );
\pixel2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[11]_i_1_n_0\,
      Q => pixel2(11),
      R => '0'
    );
\pixel2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[12]_i_1_n_0\,
      Q => pixel2(12),
      R => '0'
    );
\pixel2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[13]_i_1_n_0\,
      Q => pixel2(13),
      R => '0'
    );
\pixel2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[14]_i_1_n_0\,
      Q => pixel2(14),
      R => '0'
    );
\pixel2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[15]_i_1_n_0\,
      Q => pixel2(15),
      R => '0'
    );
\pixel2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[1]_i_1_n_0\,
      Q => pixel2(1),
      R => '0'
    );
\pixel2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[2]_i_1_n_0\,
      Q => pixel2(2),
      R => '0'
    );
\pixel2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[3]_i_1_n_0\,
      Q => pixel2(3),
      R => '0'
    );
\pixel2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[4]_i_1_n_0\,
      Q => pixel2(4),
      R => '0'
    );
\pixel2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[5]_i_1_n_0\,
      Q => pixel2(5),
      R => '0'
    );
\pixel2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[6]_i_1_n_0\,
      Q => pixel2(6),
      R => '0'
    );
\pixel2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[7]_i_1_n_0\,
      Q => pixel2(7),
      R => '0'
    );
\pixel2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[8]_i_1_n_0\,
      Q => pixel2(8),
      R => '0'
    );
\pixel2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel2[9]_i_1_n_0\,
      Q => pixel2(9),
      R => '0'
    );
\pixel3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(16),
      I3 => bramData(17),
      O => \pixel3[0]_i_1_n_0\
    );
\pixel3[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(18),
      I1 => bramData(19),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[10]_i_1_n_0\
    );
\pixel3[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(17),
      I2 => bramData(18),
      I3 => bramData(16),
      O => \pixel3[11]_i_1_n_0\
    );
\pixel3[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(17),
      I2 => bramData(18),
      I3 => bramData(16),
      O => \pixel3[12]_i_1_n_0\
    );
\pixel3[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(18),
      I1 => bramData(19),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[13]_i_1_n_0\
    );
\pixel3[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(17),
      I2 => bramData(18),
      I3 => bramData(16),
      O => \pixel3[14]_i_1_n_0\
    );
\pixel3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(16),
      I3 => bramData(17),
      O => \pixel3[15]_i_1_n_0\
    );
\pixel3[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(16),
      I3 => bramData(17),
      O => \pixel3[1]_i_1_n_0\
    );
\pixel3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(17),
      I1 => bramData(19),
      I2 => bramData(18),
      O => \pixel3[2]_i_1_n_0\
    );
\pixel3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[3]_i_1_n_0\
    );
\pixel3[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(16),
      I3 => bramData(17),
      O => \pixel3[4]_i_1_n_0\
    );
\pixel3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[5]_i_1_n_0\
    );
\pixel3[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[6]_i_1_n_0\
    );
\pixel3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[7]_i_1_n_0\
    );
\pixel3[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(18),
      I2 => bramData(17),
      I3 => bramData(16),
      O => \pixel3[8]_i_1_n_0\
    );
\pixel3[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(19),
      I1 => bramData(17),
      I2 => bramData(16),
      O => \pixel3[9]_i_1_n_0\
    );
\pixel3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[0]_i_1_n_0\,
      Q => pixel3(0),
      R => '0'
    );
\pixel3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[10]_i_1_n_0\,
      Q => pixel3(10),
      R => '0'
    );
\pixel3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[11]_i_1_n_0\,
      Q => pixel3(11),
      R => '0'
    );
\pixel3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[12]_i_1_n_0\,
      Q => pixel3(12),
      R => '0'
    );
\pixel3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[13]_i_1_n_0\,
      Q => pixel3(13),
      R => '0'
    );
\pixel3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[14]_i_1_n_0\,
      Q => pixel3(14),
      R => '0'
    );
\pixel3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[15]_i_1_n_0\,
      Q => pixel3(15),
      R => '0'
    );
\pixel3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[1]_i_1_n_0\,
      Q => pixel3(1),
      R => '0'
    );
\pixel3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[2]_i_1_n_0\,
      Q => pixel3(2),
      R => '0'
    );
\pixel3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[3]_i_1_n_0\,
      Q => pixel3(3),
      R => '0'
    );
\pixel3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[4]_i_1_n_0\,
      Q => pixel3(4),
      R => '0'
    );
\pixel3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[5]_i_1_n_0\,
      Q => pixel3(5),
      R => '0'
    );
\pixel3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[6]_i_1_n_0\,
      Q => pixel3(6),
      R => '0'
    );
\pixel3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[7]_i_1_n_0\,
      Q => pixel3(7),
      R => '0'
    );
\pixel3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[8]_i_1_n_0\,
      Q => pixel3(8),
      R => '0'
    );
\pixel3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel3[9]_i_1_n_0\,
      Q => pixel3(9),
      R => '0'
    );
\pixel4[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(12),
      I3 => bramData(13),
      O => \pixel4[0]_i_1_n_0\
    );
\pixel4[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(14),
      I1 => bramData(15),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[10]_i_1_n_0\
    );
\pixel4[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(13),
      I2 => bramData(14),
      I3 => bramData(12),
      O => \pixel4[11]_i_1_n_0\
    );
\pixel4[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(13),
      I2 => bramData(14),
      I3 => bramData(12),
      O => \pixel4[12]_i_1_n_0\
    );
\pixel4[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(14),
      I1 => bramData(15),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[13]_i_1_n_0\
    );
\pixel4[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(13),
      I2 => bramData(14),
      I3 => bramData(12),
      O => \pixel4[14]_i_1_n_0\
    );
\pixel4[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(12),
      I3 => bramData(13),
      O => \pixel4[15]_i_1_n_0\
    );
\pixel4[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(12),
      I3 => bramData(13),
      O => \pixel4[1]_i_1_n_0\
    );
\pixel4[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(13),
      I1 => bramData(15),
      I2 => bramData(14),
      O => \pixel4[2]_i_1_n_0\
    );
\pixel4[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[3]_i_1_n_0\
    );
\pixel4[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(12),
      I3 => bramData(13),
      O => \pixel4[4]_i_1_n_0\
    );
\pixel4[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[5]_i_1_n_0\
    );
\pixel4[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[6]_i_1_n_0\
    );
\pixel4[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[7]_i_1_n_0\
    );
\pixel4[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(14),
      I2 => bramData(13),
      I3 => bramData(12),
      O => \pixel4[8]_i_1_n_0\
    );
\pixel4[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(15),
      I1 => bramData(13),
      I2 => bramData(12),
      O => \pixel4[9]_i_1_n_0\
    );
\pixel4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[0]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[0]\,
      R => '0'
    );
\pixel4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[10]_i_1_n_0\,
      Q => data8(2),
      R => '0'
    );
\pixel4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[11]_i_1_n_0\,
      Q => data8(3),
      R => '0'
    );
\pixel4_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[12]_i_1_n_0\,
      Q => data8(4),
      R => '0'
    );
\pixel4_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[13]_i_1_n_0\,
      Q => data8(5),
      R => '0'
    );
\pixel4_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[14]_i_1_n_0\,
      Q => data8(6),
      R => '0'
    );
\pixel4_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[15]_i_1_n_0\,
      Q => data8(7),
      R => '0'
    );
\pixel4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[1]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[1]\,
      R => '0'
    );
\pixel4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[2]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[2]\,
      R => '0'
    );
\pixel4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[3]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[3]\,
      R => '0'
    );
\pixel4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[4]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[4]\,
      R => '0'
    );
\pixel4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[5]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[5]\,
      R => '0'
    );
\pixel4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[6]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[6]\,
      R => '0'
    );
\pixel4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[7]_i_1_n_0\,
      Q => \pixel4_reg_n_0_[7]\,
      R => '0'
    );
\pixel4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[8]_i_1_n_0\,
      Q => data8(0),
      R => '0'
    );
\pixel4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel4[9]_i_1_n_0\,
      Q => data8(1),
      R => '0'
    );
\pixel5[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(8),
      I3 => bramData(9),
      O => \pixel5[0]_i_1_n_0\
    );
\pixel5[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(10),
      I1 => bramData(11),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[10]_i_1_n_0\
    );
\pixel5[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(9),
      I2 => bramData(10),
      I3 => bramData(8),
      O => \pixel5[11]_i_1_n_0\
    );
\pixel5[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(9),
      I2 => bramData(10),
      I3 => bramData(8),
      O => \pixel5[12]_i_1_n_0\
    );
\pixel5[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(10),
      I1 => bramData(11),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[13]_i_1_n_0\
    );
\pixel5[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(9),
      I2 => bramData(10),
      I3 => bramData(8),
      O => \pixel5[14]_i_1_n_0\
    );
\pixel5[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(8),
      I3 => bramData(9),
      O => \pixel5[15]_i_1_n_0\
    );
\pixel5[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(8),
      I3 => bramData(9),
      O => \pixel5[1]_i_1_n_0\
    );
\pixel5[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(9),
      I1 => bramData(11),
      I2 => bramData(10),
      O => \pixel5[2]_i_1_n_0\
    );
\pixel5[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[3]_i_1_n_0\
    );
\pixel5[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(8),
      I3 => bramData(9),
      O => \pixel5[4]_i_1_n_0\
    );
\pixel5[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[5]_i_1_n_0\
    );
\pixel5[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[6]_i_1_n_0\
    );
\pixel5[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[7]_i_1_n_0\
    );
\pixel5[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(10),
      I2 => bramData(9),
      I3 => bramData(8),
      O => \pixel5[8]_i_1_n_0\
    );
\pixel5[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(11),
      I1 => bramData(9),
      I2 => bramData(8),
      O => \pixel5[9]_i_1_n_0\
    );
\pixel5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[0]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[0]\,
      R => '0'
    );
\pixel5_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[10]_i_1_n_0\,
      Q => data10(2),
      R => '0'
    );
\pixel5_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[11]_i_1_n_0\,
      Q => data10(3),
      R => '0'
    );
\pixel5_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[12]_i_1_n_0\,
      Q => data10(4),
      R => '0'
    );
\pixel5_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[13]_i_1_n_0\,
      Q => data10(5),
      R => '0'
    );
\pixel5_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[14]_i_1_n_0\,
      Q => data10(6),
      R => '0'
    );
\pixel5_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[15]_i_1_n_0\,
      Q => data10(7),
      R => '0'
    );
\pixel5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[1]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[1]\,
      R => '0'
    );
\pixel5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[2]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[2]\,
      R => '0'
    );
\pixel5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[3]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[3]\,
      R => '0'
    );
\pixel5_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[4]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[4]\,
      R => '0'
    );
\pixel5_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[5]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[5]\,
      R => '0'
    );
\pixel5_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[6]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[6]\,
      R => '0'
    );
\pixel5_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[7]_i_1_n_0\,
      Q => \pixel5_reg_n_0_[7]\,
      R => '0'
    );
\pixel5_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[8]_i_1_n_0\,
      Q => data10(0),
      R => '0'
    );
\pixel5_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel5[9]_i_1_n_0\,
      Q => data10(1),
      R => '0'
    );
\pixel6[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(4),
      I3 => bramData(5),
      O => \pixel6[0]_i_1_n_0\
    );
\pixel6[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(6),
      I1 => bramData(7),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[10]_i_1_n_0\
    );
\pixel6[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(5),
      I2 => bramData(6),
      I3 => bramData(4),
      O => \pixel6[11]_i_1_n_0\
    );
\pixel6[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(5),
      I2 => bramData(6),
      I3 => bramData(4),
      O => \pixel6[12]_i_1_n_0\
    );
\pixel6[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(6),
      I1 => bramData(7),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[13]_i_1_n_0\
    );
\pixel6[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(5),
      I2 => bramData(6),
      I3 => bramData(4),
      O => \pixel6[14]_i_1_n_0\
    );
\pixel6[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(4),
      I3 => bramData(5),
      O => \pixel6[15]_i_1_n_0\
    );
\pixel6[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(4),
      I3 => bramData(5),
      O => \pixel6[1]_i_1_n_0\
    );
\pixel6[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(5),
      I1 => bramData(7),
      I2 => bramData(6),
      O => \pixel6[2]_i_1_n_0\
    );
\pixel6[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[3]_i_1_n_0\
    );
\pixel6[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(4),
      I3 => bramData(5),
      O => \pixel6[4]_i_1_n_0\
    );
\pixel6[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[5]_i_1_n_0\
    );
\pixel6[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[6]_i_1_n_0\
    );
\pixel6[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[7]_i_1_n_0\
    );
\pixel6[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(6),
      I2 => bramData(5),
      I3 => bramData(4),
      O => \pixel6[8]_i_1_n_0\
    );
\pixel6[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(7),
      I1 => bramData(5),
      I2 => bramData(4),
      O => \pixel6[9]_i_1_n_0\
    );
\pixel6_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[0]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[0]\,
      R => '0'
    );
\pixel6_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[10]_i_1_n_0\,
      Q => data12(2),
      R => '0'
    );
\pixel6_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[11]_i_1_n_0\,
      Q => data12(3),
      R => '0'
    );
\pixel6_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[12]_i_1_n_0\,
      Q => data12(4),
      R => '0'
    );
\pixel6_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[13]_i_1_n_0\,
      Q => data12(5),
      R => '0'
    );
\pixel6_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[14]_i_1_n_0\,
      Q => data12(6),
      R => '0'
    );
\pixel6_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[15]_i_1_n_0\,
      Q => data12(7),
      R => '0'
    );
\pixel6_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[1]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[1]\,
      R => '0'
    );
\pixel6_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[2]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[2]\,
      R => '0'
    );
\pixel6_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[3]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[3]\,
      R => '0'
    );
\pixel6_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[4]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[4]\,
      R => '0'
    );
\pixel6_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[5]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[5]\,
      R => '0'
    );
\pixel6_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[6]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[6]\,
      R => '0'
    );
\pixel6_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[7]_i_1_n_0\,
      Q => \pixel6_reg_n_0_[7]\,
      R => '0'
    );
\pixel6_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[8]_i_1_n_0\,
      Q => data12(0),
      R => '0'
    );
\pixel6_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel6[9]_i_1_n_0\,
      Q => data12(1),
      R => '0'
    );
\pixel7[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EDFC"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(0),
      I3 => bramData(1),
      O => \pixel7[0]_i_1_n_0\
    );
\pixel7[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bramData(2),
      I1 => bramData(3),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[10]_i_1_n_0\
    );
\pixel7[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD48"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(1),
      I2 => bramData(2),
      I3 => bramData(0),
      O => \pixel7[11]_i_1_n_0\
    );
\pixel7[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(1),
      I2 => bramData(2),
      I3 => bramData(0),
      O => \pixel7[12]_i_1_n_0\
    );
\pixel7[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF38"
    )
        port map (
      I0 => bramData(2),
      I1 => bramData(3),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[13]_i_1_n_0\
    );
\pixel7[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(1),
      I2 => bramData(2),
      I3 => bramData(0),
      O => \pixel7[14]_i_1_n_0\
    );
\pixel7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000020E0"
    )
        port map (
      I0 => \pixelInFrame[15]_i_3_n_0\,
      I1 => \stateIdx__0\(0),
      I2 => \stateIdx__0\(1),
      I3 => \pixel7[15]_i_3_n_0\,
      I4 => nEnable,
      I5 => override,
      O => \pixel7[15]_i_1_n_0\
    );
\pixel7[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0A2"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(0),
      I3 => bramData(1),
      O => \pixel7[15]_i_2_n_0\
    );
\pixel7[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \tftData_out[7]_i_28_n_0\,
      I1 => \pixel7[15]_i_4_n_0\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => \pixel7[15]_i_5_n_0\,
      O => \pixel7[15]_i_3_n_0\
    );
\pixel7[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDFDDFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[11]\,
      I2 => \stepCount_reg_n_0_[10]\,
      I3 => \stepCount_reg_n_0_[9]\,
      I4 => \stepCount_reg_n_0_[7]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => \pixel7[15]_i_4_n_0\
    );
\pixel7[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \stepCount_reg_n_0_[0]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[1]\,
      O => \pixel7[15]_i_5_n_0\
    );
\pixel7[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCEC"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(0),
      I3 => bramData(1),
      O => \pixel7[1]_i_1_n_0\
    );
\pixel7[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => bramData(1),
      I1 => bramData(3),
      I2 => bramData(2),
      O => \pixel7[2]_i_1_n_0\
    );
\pixel7[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CCC"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[3]_i_1_n_0\
    );
\pixel7[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C88A"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(0),
      I3 => bramData(1),
      O => \pixel7[4]_i_1_n_0\
    );
\pixel7[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1F0"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[5]_i_1_n_0\
    );
\pixel7[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E7F0"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[6]_i_1_n_0\
    );
\pixel7[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0F0"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[7]_i_1_n_0\
    );
\pixel7[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAF0"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(2),
      I2 => bramData(1),
      I3 => bramData(0),
      O => \pixel7[8]_i_1_n_0\
    );
\pixel7[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => bramData(3),
      I1 => bramData(1),
      I2 => bramData(0),
      O => \pixel7[9]_i_1_n_0\
    );
\pixel7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[0]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[0]\,
      R => '0'
    );
\pixel7_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[10]_i_1_n_0\,
      Q => data14(2),
      R => '0'
    );
\pixel7_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[11]_i_1_n_0\,
      Q => data14(3),
      R => '0'
    );
\pixel7_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[12]_i_1_n_0\,
      Q => data14(4),
      R => '0'
    );
\pixel7_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[13]_i_1_n_0\,
      Q => data14(5),
      R => '0'
    );
\pixel7_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[14]_i_1_n_0\,
      Q => data14(6),
      R => '0'
    );
\pixel7_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[15]_i_2_n_0\,
      Q => data14(7),
      R => '0'
    );
\pixel7_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[1]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[1]\,
      R => '0'
    );
\pixel7_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[2]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[2]\,
      R => '0'
    );
\pixel7_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[3]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[3]\,
      R => '0'
    );
\pixel7_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[4]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[4]\,
      R => '0'
    );
\pixel7_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[5]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[5]\,
      R => '0'
    );
\pixel7_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[6]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[6]\,
      R => '0'
    );
\pixel7_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[7]_i_1_n_0\,
      Q => \pixel7_reg_n_0_[7]\,
      R => '0'
    );
\pixel7_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[8]_i_1_n_0\,
      Q => data14(0),
      R => '0'
    );
\pixel7_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixel7[15]_i_1_n_0\,
      D => \pixel7[9]_i_1_n_0\,
      Q => data14(1),
      R => '0'
    );
\pixelCount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pixelCount_reg_n_0_[0]\,
      O => \pixelCount[0]_i_1_n_0\
    );
\pixelCount[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => ready_i_2_n_0,
      I2 => start,
      I3 => lastStart,
      I4 => \stateIdx__0\(1),
      O => \pixelCount[15]_i_1_n_0\
    );
\pixelCount[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008088880080"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => ready_i_2_n_0,
      I2 => start,
      I3 => lastStart,
      I4 => \stateIdx__0\(1),
      I5 => \pixelCount[15]_i_4_n_0\,
      O => \pixelCount[15]_i_2_n_0\
    );
\pixelCount[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4700FFFF"
    )
        port map (
      I0 => \pixelCount[15]_i_5_n_0\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \pixelCount[15]_i_6_n_0\,
      I3 => \pixel7[15]_i_3_n_0\,
      I4 => \stepCount_reg_n_0_[0]\,
      I5 => \tftData_out[7]_i_10_n_0\,
      O => \pixelCount[15]_i_4_n_0\
    );
\pixelCount[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000300600"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[2]\,
      I5 => \pixelCount[15]_i_7_n_0\,
      O => \pixelCount[15]_i_5_n_0\
    );
\pixelCount[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08202008"
    )
        port map (
      I0 => \pixelCount[15]_i_8_n_0\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[7]\,
      O => \pixelCount[15]_i_6_n_0\
    );
\pixelCount[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAEF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[6]\,
      O => \pixelCount[15]_i_7_n_0\
    );
\pixelCount[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"48000300"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[3]\,
      O => \pixelCount[15]_i_8_n_0\
    );
\pixelCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => \pixelCount[0]_i_1_n_0\,
      Q => \pixelCount_reg_n_0_[0]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(10),
      Q => \pixelCount_reg_n_0_[10]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(11),
      Q => \pixelCount_reg_n_0_[11]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(12),
      Q => \pixelCount_reg_n_0_[12]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelCount_reg[8]_i_1_n_0\,
      CO(3) => \pixelCount_reg[12]_i_1_n_0\,
      CO(2) => \pixelCount_reg[12]_i_1_n_1\,
      CO(1) => \pixelCount_reg[12]_i_1_n_2\,
      CO(0) => \pixelCount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in17(12 downto 9),
      S(3) => \pixelCount_reg_n_0_[12]\,
      S(2) => \pixelCount_reg_n_0_[11]\,
      S(1) => \pixelCount_reg_n_0_[10]\,
      S(0) => \pixelCount_reg_n_0_[9]\
    );
\pixelCount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(13),
      Q => \pixelCount_reg_n_0_[13]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(14),
      Q => \pixelCount_reg_n_0_[14]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(15),
      Q => \pixelCount_reg_n_0_[15]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelCount_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_pixelCount_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \pixelCount_reg[15]_i_3_n_2\,
      CO(0) => \pixelCount_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_pixelCount_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => in17(15 downto 13),
      S(3) => '0',
      S(2) => \pixelCount_reg_n_0_[15]\,
      S(1) => \pixelCount_reg_n_0_[14]\,
      S(0) => \pixelCount_reg_n_0_[13]\
    );
\pixelCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(1),
      Q => \pixelCount_reg_n_0_[1]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(2),
      Q => \pixelCount_reg_n_0_[2]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(3),
      Q => \pixelCount_reg_n_0_[3]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(4),
      Q => \pixelCount_reg_n_0_[4]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixelCount_reg[4]_i_1_n_0\,
      CO(2) => \pixelCount_reg[4]_i_1_n_1\,
      CO(1) => \pixelCount_reg[4]_i_1_n_2\,
      CO(0) => \pixelCount_reg[4]_i_1_n_3\,
      CYINIT => \pixelCount_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in17(4 downto 1),
      S(3) => \pixelCount_reg_n_0_[4]\,
      S(2) => \pixelCount_reg_n_0_[3]\,
      S(1) => \pixelCount_reg_n_0_[2]\,
      S(0) => \pixelCount_reg_n_0_[1]\
    );
\pixelCount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(5),
      Q => \pixelCount_reg_n_0_[5]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(6),
      Q => \pixelCount_reg_n_0_[6]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(7),
      Q => \pixelCount_reg_n_0_[7]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(8),
      Q => \pixelCount_reg_n_0_[8]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelCount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelCount_reg[4]_i_1_n_0\,
      CO(3) => \pixelCount_reg[8]_i_1_n_0\,
      CO(2) => \pixelCount_reg[8]_i_1_n_1\,
      CO(1) => \pixelCount_reg[8]_i_1_n_2\,
      CO(0) => \pixelCount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in17(8 downto 5),
      S(3) => \pixelCount_reg_n_0_[8]\,
      S(2) => \pixelCount_reg_n_0_[7]\,
      S(1) => \pixelCount_reg_n_0_[6]\,
      S(0) => \pixelCount_reg_n_0_[5]\
    );
\pixelCount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelCount[15]_i_2_n_0\,
      D => in17(9),
      Q => \pixelCount_reg_n_0_[9]\,
      R => \pixelCount[15]_i_1_n_0\
    );
\pixelInFrame0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixelInFrame0__0_carry_n_0\,
      CO(2) => \pixelInFrame0__0_carry_n_1\,
      CO(1) => \pixelInFrame0__0_carry_n_2\,
      CO(0) => \pixelInFrame0__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__0_carry_i_1_n_0\,
      DI(2) => \pixelInFrame0__0_carry_i_2_n_0\,
      DI(1) => \pixelInFrame0__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \pixelInFrame0__0_carry_n_4\,
      O(2 downto 0) => pixelInFrame0(2 downto 0),
      S(3) => \pixelInFrame0__0_carry_i_4_n_0\,
      S(2) => \pixelInFrame0__0_carry_i_5_n_0\,
      S(1) => \pixelInFrame0__0_carry_i_6_n_0\,
      S(0) => \pixelInFrame0__0_carry_i_7_n_0\
    );
\pixelInFrame0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__0_carry_n_0\,
      CO(3) => \pixelInFrame0__0_carry__0_n_0\,
      CO(2) => \pixelInFrame0__0_carry__0_n_1\,
      CO(1) => \pixelInFrame0__0_carry__0_n_2\,
      CO(0) => \pixelInFrame0__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__0_carry__0_i_1_n_0\,
      DI(2) => \pixelInFrame0__0_carry__0_i_2_n_0\,
      DI(1) => \pixelInFrame0__0_carry__0_i_3_n_0\,
      DI(0) => \pixelInFrame0__0_carry__0_i_4_n_0\,
      O(3) => \pixelInFrame0__0_carry__0_n_4\,
      O(2) => \pixelInFrame0__0_carry__0_n_5\,
      O(1) => \pixelInFrame0__0_carry__0_n_6\,
      O(0) => \pixelInFrame0__0_carry__0_n_7\,
      S(3) => \pixelInFrame0__0_carry__0_i_5_n_0\,
      S(2) => \pixelInFrame0__0_carry__0_i_6_n_0\,
      S(1) => \pixelInFrame0__0_carry__0_i_7_n_0\,
      S(0) => \pixelInFrame0__0_carry__0_i_8_n_0\
    );
\pixelInFrame0__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(2),
      I1 => \frame_width_reg_n_0_[4]\,
      I2 => frame_height(1),
      I3 => \frame_width_reg_n_0_[5]\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[6]\,
      O => \pixelInFrame0__0_carry__0_i_1_n_0\
    );
\pixelInFrame0__0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[5]\,
      I1 => frame_height(1),
      O => \pixelInFrame0__0_carry__0_i_10_n_0\
    );
\pixelInFrame0__0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[4]\,
      I1 => frame_height(1),
      O => \pixelInFrame0__0_carry__0_i_11_n_0\
    );
\pixelInFrame0__0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[3]\,
      I1 => frame_height(1),
      O => \pixelInFrame0__0_carry__0_i_12_n_0\
    );
\pixelInFrame0__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(2),
      I1 => \frame_width_reg_n_0_[3]\,
      I2 => frame_height(1),
      I3 => \frame_width_reg_n_0_[4]\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[5]\,
      O => \pixelInFrame0__0_carry__0_i_2_n_0\
    );
\pixelInFrame0__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(2),
      I1 => \frame_width_reg_n_0_[2]\,
      I2 => frame_height(1),
      I3 => \frame_width_reg_n_0_[3]\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[4]\,
      O => \pixelInFrame0__0_carry__0_i_3_n_0\
    );
\pixelInFrame0__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(2),
      I1 => \frame_width_reg_n_0_[1]\,
      I2 => frame_height(1),
      I3 => \frame_width_reg_n_0_[2]\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[3]\,
      O => \pixelInFrame0__0_carry__0_i_4_n_0\
    );
\pixelInFrame0__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_i_1_n_0\,
      I1 => frame_height(2),
      I2 => \frame_width_reg_n_0_[5]\,
      I3 => \pixelInFrame0__0_carry__0_i_9_n_0\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[7]\,
      O => \pixelInFrame0__0_carry__0_i_5_n_0\
    );
\pixelInFrame0__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_i_2_n_0\,
      I1 => frame_height(2),
      I2 => \frame_width_reg_n_0_[4]\,
      I3 => \pixelInFrame0__0_carry__0_i_10_n_0\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[6]\,
      O => \pixelInFrame0__0_carry__0_i_6_n_0\
    );
\pixelInFrame0__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_i_3_n_0\,
      I1 => frame_height(2),
      I2 => \frame_width_reg_n_0_[3]\,
      I3 => \pixelInFrame0__0_carry__0_i_11_n_0\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[5]\,
      O => \pixelInFrame0__0_carry__0_i_7_n_0\
    );
\pixelInFrame0__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_i_4_n_0\,
      I1 => frame_height(2),
      I2 => \frame_width_reg_n_0_[2]\,
      I3 => \pixelInFrame0__0_carry__0_i_12_n_0\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[4]\,
      O => \pixelInFrame0__0_carry__0_i_8_n_0\
    );
\pixelInFrame0__0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => frame_height(1),
      O => \pixelInFrame0__0_carry__0_i_9_n_0\
    );
\pixelInFrame0__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__0_carry__0_n_0\,
      CO(3) => \NLW_pixelInFrame0__0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \pixelInFrame0__0_carry__1_n_1\,
      CO(1) => \NLW_pixelInFrame0__0_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \pixelInFrame0__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \pixelInFrame0__0_carry__1_i_1_n_0\,
      DI(0) => \pixelInFrame0__0_carry__1_i_2_n_0\,
      O(3 downto 2) => \NLW_pixelInFrame0__0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \pixelInFrame0__0_carry__1_n_6\,
      O(0) => \pixelInFrame0__0_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \pixelInFrame0__0_carry__1_i_3_n_0\,
      S(0) => \pixelInFrame0__0_carry__1_i_4_n_0\
    );
\pixelInFrame0__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[7]\,
      I1 => frame_height(2),
      O => \pixelInFrame0__0_carry__1_i_1_n_0\
    );
\pixelInFrame0__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(2),
      I1 => \frame_width_reg_n_0_[5]\,
      I2 => frame_height(1),
      I3 => \frame_width_reg_n_0_[6]\,
      I4 => frame_height(0),
      I5 => \frame_width_reg_n_0_[7]\,
      O => \pixelInFrame0__0_carry__1_i_2_n_0\
    );
\pixelInFrame0__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => frame_height(1),
      I2 => frame_height(2),
      I3 => \frame_width_reg_n_0_[7]\,
      O => \pixelInFrame0__0_carry__1_i_3_n_0\
    );
\pixelInFrame0__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E37F70805000F000"
    )
        port map (
      I0 => frame_height(0),
      I1 => \frame_width_reg_n_0_[5]\,
      I2 => \frame_width_reg_n_0_[7]\,
      I3 => frame_height(1),
      I4 => \frame_width_reg_n_0_[6]\,
      I5 => frame_height(2),
      O => \pixelInFrame0__0_carry__1_i_4_n_0\
    );
\pixelInFrame0__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \frame_width_reg_n_0_[3]\,
      I1 => frame_height(0),
      I2 => \frame_width_reg_n_0_[2]\,
      I3 => frame_height(1),
      I4 => \frame_width_reg_n_0_[1]\,
      I5 => frame_height(2),
      O => \pixelInFrame0__0_carry_i_1_n_0\
    );
\pixelInFrame0__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => frame_height(1),
      I1 => \frame_width_reg_n_0_[1]\,
      I2 => frame_height(2),
      I3 => \frame_width_reg_n_0_[0]\,
      O => \pixelInFrame0__0_carry_i_2_n_0\
    );
\pixelInFrame0__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => frame_height(1),
      O => \pixelInFrame0__0_carry_i_3_n_0\
    );
\pixelInFrame0__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A953F3F6A6AC0C0"
    )
        port map (
      I0 => \frame_width_reg_n_0_[2]\,
      I1 => frame_height(0),
      I2 => \frame_width_reg_n_0_[3]\,
      I3 => \frame_width_reg_n_0_[0]\,
      I4 => frame_height(1),
      I5 => \pixelInFrame0__0_carry_i_8_n_0\,
      O => \pixelInFrame0__0_carry_i_4_n_0\
    );
\pixelInFrame0__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => frame_height(2),
      I2 => \frame_width_reg_n_0_[1]\,
      I3 => frame_height(1),
      I4 => \frame_width_reg_n_0_[2]\,
      I5 => frame_height(0),
      O => \pixelInFrame0__0_carry_i_5_n_0\
    );
\pixelInFrame0__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \frame_width_reg_n_0_[1]\,
      I1 => frame_height(0),
      I2 => frame_height(1),
      I3 => \frame_width_reg_n_0_[0]\,
      O => \pixelInFrame0__0_carry_i_6_n_0\
    );
\pixelInFrame0__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => frame_height(0),
      I1 => \frame_width_reg_n_0_[0]\,
      O => \pixelInFrame0__0_carry_i_7_n_0\
    );
\pixelInFrame0__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[1]\,
      I1 => frame_height(2),
      O => \pixelInFrame0__0_carry_i_8_n_0\
    );
\pixelInFrame0__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixelInFrame0__30_carry_n_0\,
      CO(2) => \pixelInFrame0__30_carry_n_1\,
      CO(1) => \pixelInFrame0__30_carry_n_2\,
      CO(0) => \pixelInFrame0__30_carry_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__30_carry_i_1_n_0\,
      DI(2) => \pixelInFrame0__30_carry_i_2_n_0\,
      DI(1) => \pixelInFrame0__30_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \pixelInFrame0__30_carry_n_4\,
      O(2) => \pixelInFrame0__30_carry_n_5\,
      O(1) => \pixelInFrame0__30_carry_n_6\,
      O(0) => \pixelInFrame0__30_carry_n_7\,
      S(3) => \pixelInFrame0__30_carry_i_4_n_0\,
      S(2) => \pixelInFrame0__30_carry_i_5_n_0\,
      S(1) => \pixelInFrame0__30_carry_i_6_n_0\,
      S(0) => \pixelInFrame0__30_carry_i_7_n_0\
    );
\pixelInFrame0__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__30_carry_n_0\,
      CO(3) => \pixelInFrame0__30_carry__0_n_0\,
      CO(2) => \pixelInFrame0__30_carry__0_n_1\,
      CO(1) => \pixelInFrame0__30_carry__0_n_2\,
      CO(0) => \pixelInFrame0__30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__30_carry__0_i_1_n_0\,
      DI(2) => \pixelInFrame0__30_carry__0_i_2_n_0\,
      DI(1) => \pixelInFrame0__30_carry__0_i_3_n_0\,
      DI(0) => \pixelInFrame0__30_carry__0_i_4_n_0\,
      O(3) => \pixelInFrame0__30_carry__0_n_4\,
      O(2) => \pixelInFrame0__30_carry__0_n_5\,
      O(1) => \pixelInFrame0__30_carry__0_n_6\,
      O(0) => \pixelInFrame0__30_carry__0_n_7\,
      S(3) => \pixelInFrame0__30_carry__0_i_5_n_0\,
      S(2) => \pixelInFrame0__30_carry__0_i_6_n_0\,
      S(1) => \pixelInFrame0__30_carry__0_i_7_n_0\,
      S(0) => \pixelInFrame0__30_carry__0_i_8_n_0\
    );
\pixelInFrame0__30_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(5),
      I1 => \frame_width_reg_n_0_[4]\,
      I2 => frame_height(4),
      I3 => \frame_width_reg_n_0_[5]\,
      I4 => \frame_width_reg_n_0_[6]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_1_n_0\
    );
\pixelInFrame0__30_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[5]\,
      I1 => frame_height(4),
      O => \pixelInFrame0__30_carry__0_i_10_n_0\
    );
\pixelInFrame0__30_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[4]\,
      I1 => frame_height(4),
      O => \pixelInFrame0__30_carry__0_i_11_n_0\
    );
\pixelInFrame0__30_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[3]\,
      I1 => frame_height(4),
      O => \pixelInFrame0__30_carry__0_i_12_n_0\
    );
\pixelInFrame0__30_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(5),
      I1 => \frame_width_reg_n_0_[3]\,
      I2 => frame_height(4),
      I3 => \frame_width_reg_n_0_[4]\,
      I4 => \frame_width_reg_n_0_[5]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_2_n_0\
    );
\pixelInFrame0__30_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(5),
      I1 => \frame_width_reg_n_0_[2]\,
      I2 => frame_height(4),
      I3 => \frame_width_reg_n_0_[3]\,
      I4 => \frame_width_reg_n_0_[4]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_3_n_0\
    );
\pixelInFrame0__30_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(5),
      I1 => \frame_width_reg_n_0_[1]\,
      I2 => frame_height(4),
      I3 => \frame_width_reg_n_0_[2]\,
      I4 => \frame_width_reg_n_0_[3]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_4_n_0\
    );
\pixelInFrame0__30_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_i_1_n_0\,
      I1 => frame_height(5),
      I2 => \frame_width_reg_n_0_[5]\,
      I3 => \pixelInFrame0__30_carry__0_i_9_n_0\,
      I4 => \frame_width_reg_n_0_[7]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_5_n_0\
    );
\pixelInFrame0__30_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_i_2_n_0\,
      I1 => frame_height(5),
      I2 => \frame_width_reg_n_0_[4]\,
      I3 => \pixelInFrame0__30_carry__0_i_10_n_0\,
      I4 => \frame_width_reg_n_0_[6]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_6_n_0\
    );
\pixelInFrame0__30_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_i_3_n_0\,
      I1 => frame_height(5),
      I2 => \frame_width_reg_n_0_[3]\,
      I3 => \pixelInFrame0__30_carry__0_i_11_n_0\,
      I4 => \frame_width_reg_n_0_[5]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_7_n_0\
    );
\pixelInFrame0__30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_i_4_n_0\,
      I1 => frame_height(5),
      I2 => \frame_width_reg_n_0_[2]\,
      I3 => \pixelInFrame0__30_carry__0_i_12_n_0\,
      I4 => \frame_width_reg_n_0_[4]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__0_i_8_n_0\
    );
\pixelInFrame0__30_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => frame_height(4),
      O => \pixelInFrame0__30_carry__0_i_9_n_0\
    );
\pixelInFrame0__30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__30_carry__0_n_0\,
      CO(3) => \NLW_pixelInFrame0__30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \pixelInFrame0__30_carry__1_n_1\,
      CO(1) => \NLW_pixelInFrame0__30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \pixelInFrame0__30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \pixelInFrame0__30_carry__1_i_1_n_0\,
      DI(0) => \pixelInFrame0__30_carry__1_i_2_n_0\,
      O(3 downto 2) => \NLW_pixelInFrame0__30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \pixelInFrame0__30_carry__1_n_6\,
      O(0) => \pixelInFrame0__30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \pixelInFrame0__30_carry__1_i_3_n_0\,
      S(0) => \pixelInFrame0__30_carry__1_i_4_n_0\
    );
\pixelInFrame0__30_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[7]\,
      I1 => frame_height(5),
      O => \pixelInFrame0__30_carry__1_i_1_n_0\
    );
\pixelInFrame0__30_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => frame_height(5),
      I1 => \frame_width_reg_n_0_[5]\,
      I2 => frame_height(4),
      I3 => \frame_width_reg_n_0_[6]\,
      I4 => \frame_width_reg_n_0_[7]\,
      I5 => frame_height(3),
      O => \pixelInFrame0__30_carry__1_i_2_n_0\
    );
\pixelInFrame0__30_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => frame_height(4),
      I2 => frame_height(5),
      I3 => \frame_width_reg_n_0_[7]\,
      O => \pixelInFrame0__30_carry__1_i_3_n_0\
    );
\pixelInFrame0__30_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E37F70805000F000"
    )
        port map (
      I0 => frame_height(3),
      I1 => \frame_width_reg_n_0_[5]\,
      I2 => \frame_width_reg_n_0_[7]\,
      I3 => frame_height(4),
      I4 => \frame_width_reg_n_0_[6]\,
      I5 => frame_height(5),
      O => \pixelInFrame0__30_carry__1_i_4_n_0\
    );
\pixelInFrame0__30_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => frame_height(3),
      I1 => \frame_width_reg_n_0_[3]\,
      I2 => \frame_width_reg_n_0_[2]\,
      I3 => frame_height(4),
      I4 => \frame_width_reg_n_0_[1]\,
      I5 => frame_height(5),
      O => \pixelInFrame0__30_carry_i_1_n_0\
    );
\pixelInFrame0__30_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => frame_height(4),
      I1 => \frame_width_reg_n_0_[1]\,
      I2 => frame_height(5),
      I3 => \frame_width_reg_n_0_[0]\,
      O => \pixelInFrame0__30_carry_i_2_n_0\
    );
\pixelInFrame0__30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => frame_height(4),
      O => \pixelInFrame0__30_carry_i_3_n_0\
    );
\pixelInFrame0__30_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A953F3F6A6AC0C0"
    )
        port map (
      I0 => \frame_width_reg_n_0_[2]\,
      I1 => \frame_width_reg_n_0_[3]\,
      I2 => frame_height(3),
      I3 => \frame_width_reg_n_0_[0]\,
      I4 => frame_height(4),
      I5 => \pixelInFrame0__30_carry_i_8_n_0\,
      O => \pixelInFrame0__30_carry_i_4_n_0\
    );
\pixelInFrame0__30_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => frame_height(5),
      I2 => \frame_width_reg_n_0_[1]\,
      I3 => frame_height(4),
      I4 => frame_height(3),
      I5 => \frame_width_reg_n_0_[2]\,
      O => \pixelInFrame0__30_carry_i_5_n_0\
    );
\pixelInFrame0__30_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => frame_height(3),
      I1 => \frame_width_reg_n_0_[1]\,
      I2 => frame_height(4),
      I3 => \frame_width_reg_n_0_[0]\,
      O => \pixelInFrame0__30_carry_i_6_n_0\
    );
\pixelInFrame0__30_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[0]\,
      I1 => frame_height(3),
      O => \pixelInFrame0__30_carry_i_7_n_0\
    );
\pixelInFrame0__30_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[1]\,
      I1 => frame_height(5),
      O => \pixelInFrame0__30_carry_i_8_n_0\
    );
\pixelInFrame0__60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixelInFrame0__60_carry_n_0\,
      CO(2) => \pixelInFrame0__60_carry_n_1\,
      CO(1) => \pixelInFrame0__60_carry_n_2\,
      CO(0) => \pixelInFrame0__60_carry_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__60_carry_i_1_n_0\,
      DI(2) => \pixelInFrame0__0_carry__0_n_6\,
      DI(1) => \pixelInFrame0__0_carry__0_n_7\,
      DI(0) => \pixelInFrame0__0_carry_n_4\,
      O(3 downto 0) => pixelInFrame0(6 downto 3),
      S(3) => \pixelInFrame0__60_carry_i_2_n_0\,
      S(2) => \pixelInFrame0__60_carry_i_3_n_0\,
      S(1) => \pixelInFrame0__60_carry_i_4_n_0\,
      S(0) => \pixelInFrame0__60_carry_i_5_n_0\
    );
\pixelInFrame0__60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__60_carry_n_0\,
      CO(3) => \pixelInFrame0__60_carry__0_n_0\,
      CO(2) => \pixelInFrame0__60_carry__0_n_1\,
      CO(1) => \pixelInFrame0__60_carry__0_n_2\,
      CO(0) => \pixelInFrame0__60_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__60_carry__0_i_1_n_0\,
      DI(2) => \pixelInFrame0__60_carry__0_i_2_n_0\,
      DI(1) => \pixelInFrame0__60_carry__0_i_3_n_0\,
      DI(0) => \pixelInFrame0__60_carry__0_i_4_n_0\,
      O(3 downto 0) => pixelInFrame0(10 downto 7),
      S(3) => \pixelInFrame0__60_carry__0_i_5_n_0\,
      S(2) => \pixelInFrame0__60_carry__0_i_6_n_0\,
      S(1) => \pixelInFrame0__60_carry__0_i_7_n_0\,
      S(0) => \pixelInFrame0__60_carry__0_i_8_n_0\
    );
\pixelInFrame0__60_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__0_i_9_n_0\,
      I1 => frame_height(6),
      I2 => \frame_width_reg_n_0_[3]\,
      I3 => \pixelInFrame0__60_carry__0_i_10_n_0\,
      O => \pixelInFrame0__60_carry__0_i_1_n_0\
    );
\pixelInFrame0__60_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => frame_height(7),
      I1 => \frame_width_reg_n_0_[2]\,
      I2 => \pixelInFrame0__0_carry__1_n_6\,
      I3 => \pixelInFrame0__30_carry__0_n_5\,
      O => \pixelInFrame0__60_carry__0_i_10_n_0\
    );
\pixelInFrame0__60_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => frame_height(7),
      I1 => \frame_width_reg_n_0_[1]\,
      I2 => \pixelInFrame0__0_carry__1_n_7\,
      I3 => \pixelInFrame0__30_carry__0_n_6\,
      O => \pixelInFrame0__60_carry__0_i_11_n_0\
    );
\pixelInFrame0__60_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_n_5\,
      I1 => \pixelInFrame0__0_carry__1_n_6\,
      I2 => \frame_width_reg_n_0_[2]\,
      I3 => frame_height(7),
      O => \pixelInFrame0__60_carry__0_i_12_n_0\
    );
\pixelInFrame0__60_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => frame_height(7),
      I1 => \frame_width_reg_n_0_[3]\,
      I2 => \pixelInFrame0__0_carry__1_n_1\,
      I3 => \pixelInFrame0__30_carry__0_n_4\,
      O => \pixelInFrame0__60_carry__0_i_13_n_0\
    );
\pixelInFrame0__60_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A880808080808080"
    )
        port map (
      I0 => frame_height(6),
      I1 => \frame_width_reg_n_0_[2]\,
      I2 => \pixelInFrame0__60_carry__0_i_11_n_0\,
      I3 => \frame_width_reg_n_0_[1]\,
      I4 => \pixelInFrame0__30_carry_n_4\,
      I5 => \pixelInFrame0__0_carry__0_n_5\,
      O => \pixelInFrame0__60_carry__0_i_2_n_0\
    );
\pixelInFrame0__60_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F7F80FF00FF00"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_n_5\,
      I1 => \pixelInFrame0__30_carry_n_4\,
      I2 => \frame_width_reg_n_0_[1]\,
      I3 => \pixelInFrame0__60_carry__0_i_11_n_0\,
      I4 => \frame_width_reg_n_0_[2]\,
      I5 => frame_height(6),
      O => \pixelInFrame0__60_carry__0_i_3_n_0\
    );
\pixelInFrame0__60_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => frame_height(7),
      I1 => \frame_width_reg_n_0_[0]\,
      I2 => \pixelInFrame0__0_carry__0_n_4\,
      I3 => \pixelInFrame0__30_carry__0_n_7\,
      O => \pixelInFrame0__60_carry__0_i_4_n_0\
    );
\pixelInFrame0__60_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696969"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__0_i_1_n_0\,
      I1 => \pixelInFrame0__60_carry__0_i_12_n_0\,
      I2 => \pixelInFrame0__60_carry__0_i_13_n_0\,
      I3 => \frame_width_reg_n_0_[4]\,
      I4 => frame_height(6),
      O => \pixelInFrame0__60_carry__0_i_5_n_0\
    );
\pixelInFrame0__60_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696969"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__0_i_2_n_0\,
      I1 => \pixelInFrame0__60_carry__0_i_9_n_0\,
      I2 => \pixelInFrame0__60_carry__0_i_10_n_0\,
      I3 => \frame_width_reg_n_0_[3]\,
      I4 => frame_height(6),
      O => \pixelInFrame0__60_carry__0_i_6_n_0\
    );
\pixelInFrame0__60_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"556A6AAA"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__0_i_3_n_0\,
      I1 => frame_height(7),
      I2 => \frame_width_reg_n_0_[0]\,
      I3 => \pixelInFrame0__0_carry__0_n_4\,
      I4 => \pixelInFrame0__30_carry__0_n_7\,
      O => \pixelInFrame0__60_carry__0_i_7_n_0\
    );
\pixelInFrame0__60_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__0_i_4_n_0\,
      I1 => \pixelInFrame0__0_carry__0_n_5\,
      I2 => \pixelInFrame0__30_carry_n_4\,
      I3 => \frame_width_reg_n_0_[1]\,
      I4 => frame_height(6),
      O => \pixelInFrame0__60_carry__0_i_8_n_0\
    );
\pixelInFrame0__60_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_n_6\,
      I1 => \pixelInFrame0__0_carry__1_n_7\,
      I2 => \frame_width_reg_n_0_[1]\,
      I3 => frame_height(7),
      O => \pixelInFrame0__60_carry__0_i_9_n_0\
    );
\pixelInFrame0__60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__60_carry__0_n_0\,
      CO(3) => \pixelInFrame0__60_carry__1_n_0\,
      CO(2) => \pixelInFrame0__60_carry__1_n_1\,
      CO(1) => \pixelInFrame0__60_carry__1_n_2\,
      CO(0) => \pixelInFrame0__60_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \pixelInFrame0__60_carry__1_i_1_n_0\,
      DI(2) => \pixelInFrame0__60_carry__1_i_2_n_0\,
      DI(1) => \pixelInFrame0__60_carry__1_i_3_n_0\,
      DI(0) => \pixelInFrame0__60_carry__1_i_4_n_0\,
      O(3 downto 0) => pixelInFrame0(14 downto 11),
      S(3) => \pixelInFrame0__60_carry__1_i_5_n_0\,
      S(2) => \pixelInFrame0__60_carry__1_i_6_n_0\,
      S(1) => \pixelInFrame0__60_carry__1_i_7_n_0\,
      S(0) => \pixelInFrame0__60_carry__1_i_8_n_0\
    );
\pixelInFrame0__60_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B300FF80CC808000"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__1_n_6\,
      I1 => frame_height(7),
      I2 => \frame_width_reg_n_0_[5]\,
      I3 => \pixelInFrame0__60_carry__1_i_9_n_0\,
      I4 => \frame_width_reg_n_0_[6]\,
      I5 => \pixelInFrame0__30_carry__1_n_1\,
      O => \pixelInFrame0__60_carry__1_i_1_n_0\
    );
\pixelInFrame0__60_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => frame_height(6),
      O => \pixelInFrame0__60_carry__1_i_10_n_0\
    );
\pixelInFrame0__60_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__0_n_4\,
      I1 => \pixelInFrame0__0_carry__1_n_1\,
      I2 => \frame_width_reg_n_0_[3]\,
      I3 => frame_height(7),
      O => \pixelInFrame0__60_carry__1_i_11_n_0\
    );
\pixelInFrame0__60_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__1_n_6\,
      I1 => frame_height(7),
      I2 => \frame_width_reg_n_0_[5]\,
      O => \pixelInFrame0__60_carry__1_i_12_n_0\
    );
\pixelInFrame0__60_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__1_n_1\,
      I1 => frame_height(7),
      I2 => \frame_width_reg_n_0_[6]\,
      O => \pixelInFrame0__60_carry__1_i_13_n_0\
    );
\pixelInFrame0__60_carry__1_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__1_n_6\,
      I1 => frame_height(7),
      I2 => \frame_width_reg_n_0_[5]\,
      O => \pixelInFrame0__60_carry__1_i_14_n_0\
    );
\pixelInFrame0__60_carry__1_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \pixelInFrame0__30_carry__1_n_7\,
      I1 => frame_height(7),
      I2 => \frame_width_reg_n_0_[4]\,
      O => \pixelInFrame0__60_carry__1_i_15_n_0\
    );
\pixelInFrame0__60_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAE02A802A802A80"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__1_i_10_n_0\,
      I1 => \frame_width_reg_n_0_[5]\,
      I2 => frame_height(7),
      I3 => \pixelInFrame0__30_carry__1_n_6\,
      I4 => \pixelInFrame0__30_carry__1_n_7\,
      I5 => \frame_width_reg_n_0_[4]\,
      O => \pixelInFrame0__60_carry__1_i_2_n_0\
    );
\pixelInFrame0__60_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40D5D5D5D5404040"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__1_i_11_n_0\,
      I1 => frame_height(6),
      I2 => \frame_width_reg_n_0_[5]\,
      I3 => \frame_width_reg_n_0_[4]\,
      I4 => frame_height(7),
      I5 => \pixelInFrame0__30_carry__1_n_7\,
      O => \pixelInFrame0__60_carry__1_i_3_n_0\
    );
\pixelInFrame0__60_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__0_i_12_n_0\,
      I1 => frame_height(6),
      I2 => \frame_width_reg_n_0_[4]\,
      I3 => \pixelInFrame0__60_carry__0_i_13_n_0\,
      O => \pixelInFrame0__60_carry__1_i_4_n_0\
    );
\pixelInFrame0__60_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FEC1C801CEC7080"
    )
        port map (
      I0 => frame_height(6),
      I1 => \pixelInFrame0__60_carry__1_i_12_n_0\,
      I2 => \frame_width_reg_n_0_[7]\,
      I3 => frame_height(7),
      I4 => \pixelInFrame0__30_carry__1_n_1\,
      I5 => \frame_width_reg_n_0_[6]\,
      O => \pixelInFrame0__60_carry__1_i_5_n_0\
    );
\pixelInFrame0__60_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969696969696"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__1_i_2_n_0\,
      I1 => \pixelInFrame0__60_carry__1_i_9_n_0\,
      I2 => \pixelInFrame0__60_carry__1_i_13_n_0\,
      I3 => \pixelInFrame0__30_carry__1_n_6\,
      I4 => frame_height(7),
      I5 => \frame_width_reg_n_0_[5]\,
      O => \pixelInFrame0__60_carry__1_i_6_n_0\
    );
\pixelInFrame0__60_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969696969696"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__1_i_3_n_0\,
      I1 => \pixelInFrame0__60_carry__1_i_10_n_0\,
      I2 => \pixelInFrame0__60_carry__1_i_14_n_0\,
      I3 => \pixelInFrame0__30_carry__1_n_7\,
      I4 => frame_height(7),
      I5 => \frame_width_reg_n_0_[4]\,
      O => \pixelInFrame0__60_carry__1_i_7_n_0\
    );
\pixelInFrame0__60_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696969"
    )
        port map (
      I0 => \pixelInFrame0__60_carry__1_i_4_n_0\,
      I1 => \pixelInFrame0__60_carry__1_i_11_n_0\,
      I2 => \pixelInFrame0__60_carry__1_i_15_n_0\,
      I3 => \frame_width_reg_n_0_[5]\,
      I4 => frame_height(6),
      O => \pixelInFrame0__60_carry__1_i_8_n_0\
    );
\pixelInFrame0__60_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \frame_width_reg_n_0_[7]\,
      I1 => frame_height(6),
      O => \pixelInFrame0__60_carry__1_i_9_n_0\
    );
\pixelInFrame0__60_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixelInFrame0__60_carry__1_n_0\,
      CO(3 downto 0) => \NLW_pixelInFrame0__60_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_pixelInFrame0__60_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => pixelInFrame0(15),
      S(3 downto 1) => B"000",
      S(0) => \pixelInFrame0__60_carry__2_i_1_n_0\
    );
\pixelInFrame0__60_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \frame_width_reg_n_0_[6]\,
      I1 => frame_height(7),
      I2 => \pixelInFrame0__30_carry__1_n_1\,
      I3 => \frame_width_reg_n_0_[7]\,
      O => \pixelInFrame0__60_carry__2_i_1_n_0\
    );
\pixelInFrame0__60_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_n_5\,
      I1 => \pixelInFrame0__30_carry_n_4\,
      O => \pixelInFrame0__60_carry_i_1_n_0\
    );
\pixelInFrame0__60_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \pixelInFrame0__30_carry_n_4\,
      I1 => \pixelInFrame0__0_carry__0_n_5\,
      I2 => frame_height(6),
      I3 => \frame_width_reg_n_0_[0]\,
      O => \pixelInFrame0__60_carry_i_2_n_0\
    );
\pixelInFrame0__60_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_n_6\,
      I1 => \pixelInFrame0__30_carry_n_5\,
      O => \pixelInFrame0__60_carry_i_3_n_0\
    );
\pixelInFrame0__60_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixelInFrame0__0_carry__0_n_7\,
      I1 => \pixelInFrame0__30_carry_n_6\,
      O => \pixelInFrame0__60_carry_i_4_n_0\
    );
\pixelInFrame0__60_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pixelInFrame0__0_carry_n_4\,
      I1 => \pixelInFrame0__30_carry_n_7\,
      O => \pixelInFrame0__60_carry_i_5_n_0\
    );
\pixelInFrame[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => \stateIdx__0\(1),
      I2 => start,
      I3 => lastStart,
      I4 => ready_i_2_n_0,
      O => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20002C0020002000"
    )
        port map (
      I0 => \pixelInFrame[15]_i_3_n_0\,
      I1 => \stateIdx__0\(0),
      I2 => \stateIdx__0\(1),
      I3 => ready_i_2_n_0,
      I4 => lastStart,
      I5 => start,
      O => \pixelInFrame[15]_i_2_n_0\
    );
\pixelInFrame[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pixelInFrame[15]_i_4_n_0\,
      I1 => \tftData_out[7]_i_10_n_0\,
      O => \pixelInFrame[15]_i_3_n_0\
    );
\pixelInFrame[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \pixelInFrame[15]_i_5_n_0\,
      O => \pixelInFrame[15]_i_4_n_0\
    );
\pixelInFrame[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[1]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[0]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => \pixelInFrame[15]_i_5_n_0\
    );
\pixelInFrame_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(0),
      Q => \pixelInFrame_reg_n_0_[0]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(10),
      Q => \pixelInFrame_reg_n_0_[10]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(11),
      Q => \pixelInFrame_reg_n_0_[11]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(12),
      Q => \pixelInFrame_reg_n_0_[12]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(13),
      Q => \pixelInFrame_reg_n_0_[13]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(14),
      Q => \pixelInFrame_reg_n_0_[14]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(15),
      Q => \pixelInFrame_reg_n_0_[15]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(1),
      Q => \pixelInFrame_reg_n_0_[1]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(2),
      Q => \pixelInFrame_reg_n_0_[2]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(3),
      Q => \pixelInFrame_reg_n_0_[3]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(4),
      Q => \pixelInFrame_reg_n_0_[4]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(5),
      Q => \pixelInFrame_reg_n_0_[5]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(6),
      Q => \pixelInFrame_reg_n_0_[6]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(7),
      Q => \pixelInFrame_reg_n_0_[7]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(8),
      Q => \pixelInFrame_reg_n_0_[8]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\pixelInFrame_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pixelInFrame[15]_i_2_n_0\,
      D => pixelInFrame0(9),
      Q => \pixelInFrame_reg_n_0_[9]\,
      R => \pixelInFrame[15]_i_1_n_0\
    );
\plusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__1/i__carry_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \address_reg_n_0_[2]\,
      DI(0) => '0',
      O(3 downto 1) => in22(4 downto 2),
      O(0) => \NLW_plusOp_inferred__1/i__carry_O_UNCONNECTED\(0),
      S(3) => \address_reg_n_0_[4]\,
      S(2) => \address_reg_n_0_[3]\,
      S(1) => \i__carry_i_1_n_0\,
      S(0) => '0'
    );
\plusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(8 downto 5),
      S(3) => \address_reg_n_0_[8]\,
      S(2) => \address_reg_n_0_[7]\,
      S(1) => \address_reg_n_0_[6]\,
      S(0) => \address_reg_n_0_[5]\
    );
\plusOp_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(12 downto 9),
      S(3) => \address_reg_n_0_[12]\,
      S(2) => \address_reg_n_0_[11]\,
      S(1) => \address_reg_n_0_[10]\,
      S(0) => \address_reg_n_0_[9]\
    );
\plusOp_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(16 downto 13),
      S(3) => \address_reg_n_0_[16]\,
      S(2) => \address_reg_n_0_[15]\,
      S(1) => \address_reg_n_0_[14]\,
      S(0) => \address_reg_n_0_[13]\
    );
\plusOp_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(20 downto 17),
      S(3) => \address_reg_n_0_[20]\,
      S(2) => \address_reg_n_0_[19]\,
      S(1) => \address_reg_n_0_[18]\,
      S(0) => \address_reg_n_0_[17]\
    );
\plusOp_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(24 downto 21),
      S(3) => \address_reg_n_0_[24]\,
      S(2) => \address_reg_n_0_[23]\,
      S(1) => \address_reg_n_0_[22]\,
      S(0) => \address_reg_n_0_[21]\
    );
\plusOp_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__4_n_0\,
      CO(3) => \plusOp_inferred__1/i__carry__5_n_0\,
      CO(2) => \plusOp_inferred__1/i__carry__5_n_1\,
      CO(1) => \plusOp_inferred__1/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(28 downto 25),
      S(3) => \address_reg_n_0_[28]\,
      S(2) => \address_reg_n_0_[27]\,
      S(1) => \address_reg_n_0_[26]\,
      S(0) => \address_reg_n_0_[25]\
    );
\plusOp_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__1/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__1/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__1/i__carry__6_n_2\,
      CO(0) => \plusOp_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__1/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in22(31 downto 29),
      S(3) => '0',
      S(2) => \address_reg_n_0_[31]\,
      S(1) => \address_reg_n_0_[30]\,
      S(0) => \address_reg_n_0_[29]\
    );
ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABA8ABA00000000"
    )
        port map (
      I0 => \^ready\,
      I1 => \stateIdx__0\(1),
      I2 => \stateIdx__0\(0),
      I3 => start,
      I4 => lastStart,
      I5 => ready_i_2_n_0,
      O => ready_i_1_n_0
    );
ready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => override,
      I1 => nEnable,
      O => ready_i_2_n_0
    );
ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
stateIdx0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => stateIdx0_carry_n_0,
      CO(2) => stateIdx0_carry_n_1,
      CO(1) => stateIdx0_carry_n_2,
      CO(0) => stateIdx0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_stateIdx0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => stateIdx0_carry_i_1_n_0,
      S(2) => stateIdx0_carry_i_2_n_0,
      S(1) => stateIdx0_carry_i_3_n_0,
      S(0) => stateIdx0_carry_i_4_n_0
    );
\stateIdx0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => stateIdx0_carry_n_0,
      CO(3 downto 2) => \NLW_stateIdx0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \stateIdx0_carry__0_n_2\,
      CO(0) => \stateIdx0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_stateIdx0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \stateIdx0_carry__0_i_1_n_0\,
      S(0) => \stateIdx0_carry__0_i_2_n_0\
    );
\stateIdx0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pixelInFrame_reg_n_0_[15]\,
      I1 => \pixelCount_reg_n_0_[15]\,
      O => \stateIdx0_carry__0_i_1_n_0\
    );
\stateIdx0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixelCount_reg_n_0_[12]\,
      I1 => \pixelInFrame_reg_n_0_[12]\,
      I2 => \pixelCount_reg_n_0_[13]\,
      I3 => \pixelInFrame_reg_n_0_[13]\,
      I4 => \pixelInFrame_reg_n_0_[14]\,
      I5 => \pixelCount_reg_n_0_[14]\,
      O => \stateIdx0_carry__0_i_2_n_0\
    );
stateIdx0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixelCount_reg_n_0_[9]\,
      I1 => \pixelInFrame_reg_n_0_[9]\,
      I2 => \pixelCount_reg_n_0_[10]\,
      I3 => \pixelInFrame_reg_n_0_[10]\,
      I4 => \pixelInFrame_reg_n_0_[11]\,
      I5 => \pixelCount_reg_n_0_[11]\,
      O => stateIdx0_carry_i_1_n_0
    );
stateIdx0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixelCount_reg_n_0_[8]\,
      I1 => \pixelInFrame_reg_n_0_[8]\,
      I2 => \pixelCount_reg_n_0_[6]\,
      I3 => \pixelInFrame_reg_n_0_[6]\,
      I4 => \pixelInFrame_reg_n_0_[7]\,
      I5 => \pixelCount_reg_n_0_[7]\,
      O => stateIdx0_carry_i_2_n_0
    );
stateIdx0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixelCount_reg_n_0_[3]\,
      I1 => \pixelInFrame_reg_n_0_[3]\,
      I2 => \pixelCount_reg_n_0_[4]\,
      I3 => \pixelInFrame_reg_n_0_[4]\,
      I4 => \pixelInFrame_reg_n_0_[5]\,
      I5 => \pixelCount_reg_n_0_[5]\,
      O => stateIdx0_carry_i_3_n_0
    );
stateIdx0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pixelCount_reg_n_0_[0]\,
      I1 => \pixelInFrame_reg_n_0_[0]\,
      I2 => \pixelCount_reg_n_0_[1]\,
      I3 => \pixelInFrame_reg_n_0_[1]\,
      I4 => \pixelInFrame_reg_n_0_[2]\,
      I5 => \pixelCount_reg_n_0_[2]\,
      O => stateIdx0_carry_i_4_n_0
    );
\stepCount[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => \stepCount[15]_i_2_n_0\,
      I2 => \stepCount_reg_n_0_[0]\,
      O => \stepCount[0]_i_1_n_0\
    );
\stepCount[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555700000000"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg[15]_i_4_n_0\,
      I5 => \stepCount[15]_i_2_n_0\,
      O => \stepCount[15]_i_1_n_0\
    );
\stepCount[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AE000000AA"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => start,
      I2 => lastStart,
      I3 => nEnable,
      I4 => override,
      I5 => \stateIdx__0\(0),
      O => \stepCount[15]_i_2_n_0\
    );
\stepCount[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \stepCount[15]_i_7_n_0\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[8]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \stepCount[15]_i_5_n_0\
    );
\stepCount[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \tftData_out[7]_i_16_n_0\,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[8]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => \stepCount[15]_i_6_n_0\
    );
\stepCount[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[7]\,
      O => \stepCount[15]_i_7_n_0\
    );
\stepCount_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stepCount[0]_i_1_n_0\,
      Q => \stepCount_reg_n_0_[0]\,
      R => '0'
    );
\stepCount_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[12]_i_1_n_6\,
      Q => \stepCount_reg_n_0_[10]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[12]_i_1_n_5\,
      Q => \stepCount_reg_n_0_[11]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[12]_i_1_n_4\,
      Q => \stepCount_reg_n_0_[12]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stepCount_reg[8]_i_1_n_0\,
      CO(3) => \stepCount_reg[12]_i_1_n_0\,
      CO(2) => \stepCount_reg[12]_i_1_n_1\,
      CO(1) => \stepCount_reg[12]_i_1_n_2\,
      CO(0) => \stepCount_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stepCount_reg[12]_i_1_n_4\,
      O(2) => \stepCount_reg[12]_i_1_n_5\,
      O(1) => \stepCount_reg[12]_i_1_n_6\,
      O(0) => \stepCount_reg[12]_i_1_n_7\,
      S(3) => \stepCount_reg_n_0_[12]\,
      S(2) => \stepCount_reg_n_0_[11]\,
      S(1) => \stepCount_reg_n_0_[10]\,
      S(0) => \stepCount_reg_n_0_[9]\
    );
\stepCount_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[15]_i_3_n_7\,
      Q => \stepCount_reg_n_0_[13]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[15]_i_3_n_6\,
      Q => \stepCount_reg_n_0_[14]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[15]_i_3_n_5\,
      Q => \stepCount_reg_n_0_[15]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \stepCount_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_stepCount_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \stepCount_reg[15]_i_3_n_2\,
      CO(0) => \stepCount_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_stepCount_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2) => \stepCount_reg[15]_i_3_n_5\,
      O(1) => \stepCount_reg[15]_i_3_n_6\,
      O(0) => \stepCount_reg[15]_i_3_n_7\,
      S(3) => '0',
      S(2) => \stepCount_reg_n_0_[15]\,
      S(1) => \stepCount_reg_n_0_[14]\,
      S(0) => \stepCount_reg_n_0_[13]\
    );
\stepCount_reg[15]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stepCount[15]_i_5_n_0\,
      I1 => \stepCount[15]_i_6_n_0\,
      O => \stepCount_reg[15]_i_4_n_0\,
      S => \stateIdx__0\(0)
    );
\stepCount_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[4]_i_1_n_7\,
      Q => \stepCount_reg_n_0_[1]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[4]_i_1_n_6\,
      Q => \stepCount_reg_n_0_[2]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[4]_i_1_n_5\,
      Q => \stepCount_reg_n_0_[3]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[4]_i_1_n_4\,
      Q => \stepCount_reg_n_0_[4]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \stepCount_reg[4]_i_1_n_0\,
      CO(2) => \stepCount_reg[4]_i_1_n_1\,
      CO(1) => \stepCount_reg[4]_i_1_n_2\,
      CO(0) => \stepCount_reg[4]_i_1_n_3\,
      CYINIT => \stepCount_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \stepCount_reg[4]_i_1_n_4\,
      O(2) => \stepCount_reg[4]_i_1_n_5\,
      O(1) => \stepCount_reg[4]_i_1_n_6\,
      O(0) => \stepCount_reg[4]_i_1_n_7\,
      S(3) => \stepCount_reg_n_0_[4]\,
      S(2) => \stepCount_reg_n_0_[3]\,
      S(1) => \stepCount_reg_n_0_[2]\,
      S(0) => \stepCount_reg_n_0_[1]\
    );
\stepCount_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[8]_i_1_n_7\,
      Q => \stepCount_reg_n_0_[5]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[8]_i_1_n_6\,
      Q => \stepCount_reg_n_0_[6]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[8]_i_1_n_5\,
      Q => \stepCount_reg_n_0_[7]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[8]_i_1_n_4\,
      Q => \stepCount_reg_n_0_[8]\,
      R => \stepCount[15]_i_1_n_0\
    );
\stepCount_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stepCount_reg[4]_i_1_n_0\,
      CO(3) => \stepCount_reg[8]_i_1_n_0\,
      CO(2) => \stepCount_reg[8]_i_1_n_1\,
      CO(1) => \stepCount_reg[8]_i_1_n_2\,
      CO(0) => \stepCount_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stepCount_reg[8]_i_1_n_4\,
      O(2) => \stepCount_reg[8]_i_1_n_5\,
      O(1) => \stepCount_reg[8]_i_1_n_6\,
      O(0) => \stepCount_reg[8]_i_1_n_7\,
      S(3) => \stepCount_reg_n_0_[8]\,
      S(2) => \stepCount_reg_n_0_[7]\,
      S(1) => \stepCount_reg_n_0_[6]\,
      S(0) => \stepCount_reg_n_0_[5]\
    );
\stepCount_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \stepCount[15]_i_2_n_0\,
      D => \stepCount_reg[12]_i_1_n_7\,
      Q => \stepCount_reg_n_0_[9]\,
      R => \stepCount[15]_i_1_n_0\
    );
\tftData_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \tftData_out[0]_i_2_n_0\,
      I1 => \tftData_out[0]_i_3_n_0\,
      I2 => \tftData_out[7]_i_10_n_0\,
      I3 => \tftData_out[0]_i_4_n_0\,
      I4 => tftData_in(0),
      I5 => override,
      O => \tftData_out[0]_i_1_n_0\
    );
\tftData_out[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(0),
      I1 => \pixel7_reg_n_0_[0]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(0),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[0]\,
      O => \tftData_out[0]_i_10_n_0\
    );
\tftData_out[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEFFFEF"
    )
        port map (
      I0 => \tftData_out[7]_i_49_n_0\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => data2(0),
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \x1_reg_n_0_[0]\,
      I5 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[0]_i_11_n_0\
    );
\tftData_out[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDBFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => \tftData_out[0]_i_12_n_0\
    );
\tftData_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \tftData_out[1]_i_5_n_0\,
      I1 => \tftData_out[0]_i_5_n_0\,
      I2 => \tftData_out[1]_i_8_n_0\,
      I3 => \tftData_out[7]_i_19_n_0\,
      I4 => \x0_reg_n_0_[0]\,
      I5 => \tftData_out[0]_i_6_n_0\,
      O => \tftData_out[0]_i_2_n_0\
    );
\tftData_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[0]_i_7_n_0\,
      I1 => \tftData_out[0]_i_8_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[0]_i_9_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[0]_i_10_n_0\,
      O => \tftData_out[0]_i_3_n_0\
    );
\tftData_out[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \pixel7_reg_n_0_[0]\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stateIdx__0\(0),
      O => \tftData_out[0]_i_4_n_0\
    );
\tftData_out[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAA8AAAAAAAAA"
    )
        port map (
      I0 => \tftData_out[0]_i_11_n_0\,
      I1 => \tftData_out[0]_i_12_n_0\,
      I2 => \y0_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => data6(0),
      I5 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[0]_i_5_n_0\
    );
\tftData_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFBFFFB"
    )
        port map (
      I0 => \tftData_out[1]_i_13_n_0\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \y1_reg_n_0_[0]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => \tftData_out[0]_i_6_n_0\
    );
\tftData_out[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(8),
      I1 => pixel1(0),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(8),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(0),
      O => \tftData_out[0]_i_7_n_0\
    );
\tftData_out[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(8),
      I1 => pixel3(0),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(8),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(0),
      O => \tftData_out[0]_i_8_n_0\
    );
\tftData_out[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(0),
      I1 => \pixel5_reg_n_0_[0]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(0),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[0]\,
      O => \tftData_out[0]_i_9_n_0\
    );
\tftData_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \tftData_out[1]_i_2_n_0\,
      I1 => \tftData_out[1]_i_3_n_0\,
      I2 => \tftData_out[7]_i_10_n_0\,
      I3 => \tftData_out[1]_i_4_n_0\,
      I4 => tftData_in(1),
      I5 => override,
      O => \tftData_out[1]_i_1_n_0\
    );
\tftData_out[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(9),
      I1 => pixel3(1),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(9),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(1),
      O => \tftData_out[1]_i_10_n_0\
    );
\tftData_out[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(1),
      I1 => \pixel5_reg_n_0_[1]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(1),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[1]\,
      O => \tftData_out[1]_i_11_n_0\
    );
\tftData_out[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(1),
      I1 => \pixel7_reg_n_0_[1]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(1),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[1]\,
      O => \tftData_out[1]_i_12_n_0\
    );
\tftData_out[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFF7FFE7FFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[4]\,
      I5 => \tftData_out[1]_i_15_n_0\,
      O => \tftData_out[1]_i_13_n_0\
    );
\tftData_out[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2F2F200F2F2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \y0_reg_n_0_[1]\,
      I2 => WRX_bit_i_24_n_0,
      I3 => \tftData_out[1]_i_16_n_0\,
      I4 => \tftData_out[1]_i_17_n_0\,
      I5 => \stepCount_reg_n_0_[4]\,
      O => \tftData_out[1]_i_14_n_0\
    );
\tftData_out[1]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[6]\,
      O => \tftData_out[1]_i_15_n_0\
    );
\tftData_out[1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => data6(7),
      I3 => \stepCount_reg_n_0_[6]\,
      O => \tftData_out[1]_i_16_n_0\
    );
\tftData_out[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[8]\,
      O => \tftData_out[1]_i_17_n_0\
    );
\tftData_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAA8A888A88"
    )
        port map (
      I0 => \tftData_out[1]_i_5_n_0\,
      I1 => \tftData_out[1]_i_6_n_0\,
      I2 => \tftData_out[7]_i_19_n_0\,
      I3 => \x0_reg_n_0_[1]\,
      I4 => \tftData_out[1]_i_7_n_0\,
      I5 => \tftData_out[1]_i_8_n_0\,
      O => \tftData_out[1]_i_2_n_0\
    );
\tftData_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[1]_i_9_n_0\,
      I1 => \tftData_out[1]_i_10_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[1]_i_11_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[1]_i_12_n_0\,
      O => \tftData_out[1]_i_3_n_0\
    );
\tftData_out[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \pixel7_reg_n_0_[1]\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stateIdx__0\(0),
      O => \tftData_out[1]_i_4_n_0\
    );
\tftData_out[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => \tftData_out[7]_i_10_n_0\,
      O => \tftData_out[1]_i_5_n_0\
    );
\tftData_out[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004500"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \y1_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[0]\,
      I5 => \tftData_out[1]_i_13_n_0\,
      O => \tftData_out[1]_i_6_n_0\
    );
\tftData_out[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DDD0D0D0DDDDDD"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \tftData_out[1]_i_14_n_0\,
      I2 => \tftData_out[7]_i_35_n_0\,
      I3 => \x1_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[7]\,
      I5 => data2(7),
      O => \tftData_out[1]_i_7_n_0\
    );
\tftData_out[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[0]\,
      O => \tftData_out[1]_i_8_n_0\
    );
\tftData_out[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(9),
      I1 => pixel1(1),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(9),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(1),
      O => \tftData_out[1]_i_9_n_0\
    );
\tftData_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8BBBBBBB8"
    )
        port map (
      I0 => tftData_in(2),
      I1 => override,
      I2 => \tftData_out[2]_i_2_n_0\,
      I3 => \tftData_out[2]_i_3_n_0\,
      I4 => \tftData_out[7]_i_10_n_0\,
      I5 => \tftData_out[2]_i_4_n_0\,
      O => \tftData_out[2]_i_1_n_0\
    );
\tftData_out[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(2),
      I1 => \pixel5_reg_n_0_[2]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(2),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[2]\,
      O => \tftData_out[2]_i_10_n_0\
    );
\tftData_out[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(2),
      I1 => \pixel7_reg_n_0_[2]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(2),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[2]\,
      O => \tftData_out[2]_i_11_n_0\
    );
\tftData_out[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \y1_reg_n_0_[2]\,
      O => \tftData_out[2]_i_12_n_0\
    );
\tftData_out[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55404444"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => data6(7),
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[2]_i_13_n_0\
    );
\tftData_out[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF080F"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \y0_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[1]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \stepCount_reg_n_0_[8]\,
      O => \tftData_out[2]_i_14_n_0\
    );
\tftData_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555455555555"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => \tftData_out[2]_i_5_n_0\,
      I2 => \tftData_out_reg[2]_i_6_n_0\,
      I3 => \tftData_out[2]_i_7_n_0\,
      I4 => \tftData_out[7]_i_17_n_0\,
      I5 => \tftData_out[7]_i_6_n_0\,
      O => \tftData_out[2]_i_2_n_0\
    );
\tftData_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[2]_i_8_n_0\,
      I1 => \tftData_out[2]_i_9_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[2]_i_10_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[2]_i_11_n_0\,
      O => \tftData_out[2]_i_3_n_0\
    );
\tftData_out[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \pixel7_reg_n_0_[2]\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stateIdx__0\(0),
      O => \tftData_out[2]_i_4_n_0\
    );
\tftData_out[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002C20"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \x1_reg_n_0_[2]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \tftData_out[2]_i_12_n_0\,
      O => \tftData_out[2]_i_5_n_0\
    );
\tftData_out[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F388CCFFF388CCF3"
    )
        port map (
      I0 => \x0_reg_n_0_[2]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[1]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \stepCount_reg_n_0_[2]\,
      I5 => data2(7),
      O => \tftData_out[2]_i_7_n_0\
    );
\tftData_out[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(10),
      I1 => pixel1(2),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(10),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(2),
      O => \tftData_out[2]_i_8_n_0\
    );
\tftData_out[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(10),
      I1 => pixel3(2),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(10),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(2),
      O => \tftData_out[2]_i_9_n_0\
    );
\tftData_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88A8888888A888"
    )
        port map (
      I0 => \tftData_out[3]_i_2_n_0\,
      I1 => \tftData_out[3]_i_3_n_0\,
      I2 => \tftData_out[3]_i_4_n_0\,
      I3 => \stateIdx__0\(0),
      I4 => \tftData_out[7]_i_10_n_0\,
      I5 => \pixel7_reg_n_0_[3]\,
      O => \tftData_out[3]_i_1_n_0\
    );
\tftData_out[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(3),
      I1 => \pixel7_reg_n_0_[3]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(3),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[3]\,
      O => \tftData_out[3]_i_10_n_0\
    );
\tftData_out[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"508A"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \y0_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[3]\,
      O => \tftData_out[3]_i_11_n_0\
    );
\tftData_out[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tftData_in(3),
      I1 => override,
      O => \tftData_out[3]_i_2_n_0\
    );
\tftData_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFBFBFFFB"
    )
        port map (
      I0 => override,
      I1 => \tftData_out[5]_i_5_n_0\,
      I2 => \tftData_out[3]_i_5_n_0\,
      I3 => \tftData_out[5]_i_7_n_0\,
      I4 => \tftData_out[3]_i_6_n_0\,
      I5 => \stateIdx__0\(0),
      O => \tftData_out[3]_i_3_n_0\
    );
\tftData_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[3]_i_7_n_0\,
      I1 => \tftData_out[3]_i_8_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[3]_i_9_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[3]_i_10_n_0\,
      O => \tftData_out[3]_i_4_n_0\
    );
\tftData_out[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEEEEE"
    )
        port map (
      I0 => \tftData_out[5]_i_15_n_0\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \y1_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \tftData_out[3]_i_11_n_0\,
      O => \tftData_out[3]_i_5_n_0\
    );
\tftData_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000300000F5FF"
    )
        port map (
      I0 => \x0_reg_n_0_[3]\,
      I1 => \x1_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \tftData_out[3]_i_6_n_0\
    );
\tftData_out[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(11),
      I1 => pixel1(3),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(11),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(3),
      O => \tftData_out[3]_i_7_n_0\
    );
\tftData_out[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(11),
      I1 => pixel3(3),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(11),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(3),
      O => \tftData_out[3]_i_8_n_0\
    );
\tftData_out[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(3),
      I1 => \pixel5_reg_n_0_[3]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(3),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[3]\,
      O => \tftData_out[3]_i_9_n_0\
    );
\tftData_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \tftData_out[4]_i_2_n_0\,
      I1 => \tftData_out[4]_i_3_n_0\,
      I2 => \tftData_out[7]_i_10_n_0\,
      I3 => \tftData_out[4]_i_4_n_0\,
      I4 => tftData_in(4),
      I5 => override,
      O => \tftData_out[4]_i_1_n_0\
    );
\tftData_out[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(4),
      I1 => \pixel7_reg_n_0_[4]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(4),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[4]\,
      O => \tftData_out[4]_i_10_n_0\
    );
\tftData_out[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFFFBF"
    )
        port map (
      I0 => \tftData_out[0]_i_12_n_0\,
      I1 => \y0_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => data6(7),
      O => \tftData_out[4]_i_11_n_0\
    );
\tftData_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101011111111"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stateIdx__0\(0),
      I2 => \tftData_out[4]_i_5_n_0\,
      I3 => \tftData_out[7]_i_19_n_0\,
      I4 => \x0_reg_n_0_[4]\,
      I5 => \tftData_out[4]_i_6_n_0\,
      O => \tftData_out[4]_i_2_n_0\
    );
\tftData_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[4]_i_7_n_0\,
      I1 => \tftData_out[4]_i_8_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[4]_i_9_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[4]_i_10_n_0\,
      O => \tftData_out[4]_i_3_n_0\
    );
\tftData_out[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \pixel7_reg_n_0_[4]\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stateIdx__0\(0),
      O => \tftData_out[4]_i_4_n_0\
    );
\tftData_out[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \tftData_out[7]_i_34_n_0\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \y1_reg_n_0_[4]\,
      O => \tftData_out[4]_i_5_n_0\
    );
\tftData_out[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1D0000FFFFFFFF"
    )
        port map (
      I0 => data2(7),
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \x1_reg_n_0_[4]\,
      I3 => \tftData_out[7]_i_35_n_0\,
      I4 => \tftData_out[4]_i_11_n_0\,
      I5 => \tftData_out[1]_i_8_n_0\,
      O => \tftData_out[4]_i_6_n_0\
    );
\tftData_out[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(12),
      I1 => pixel1(4),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(12),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(4),
      O => \tftData_out[4]_i_7_n_0\
    );
\tftData_out[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(12),
      I1 => pixel3(4),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(12),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(4),
      O => \tftData_out[4]_i_8_n_0\
    );
\tftData_out[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(4),
      I1 => \pixel5_reg_n_0_[4]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(4),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[4]\,
      O => \tftData_out[4]_i_9_n_0\
    );
\tftData_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88A8888888A888"
    )
        port map (
      I0 => \tftData_out[5]_i_2_n_0\,
      I1 => \tftData_out[5]_i_3_n_0\,
      I2 => \tftData_out[5]_i_4_n_0\,
      I3 => \stateIdx__0\(0),
      I4 => \tftData_out[7]_i_10_n_0\,
      I5 => \pixel7_reg_n_0_[5]\,
      O => \tftData_out[5]_i_1_n_0\
    );
\tftData_out[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(13),
      I1 => pixel3(5),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(13),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(5),
      O => \tftData_out[5]_i_10_n_0\
    );
\tftData_out[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(5),
      I1 => \pixel5_reg_n_0_[5]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(5),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[5]\,
      O => \tftData_out[5]_i_11_n_0\
    );
\tftData_out[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(5),
      I1 => \pixel7_reg_n_0_[5]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(5),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[5]\,
      O => \tftData_out[5]_i_12_n_0\
    );
\tftData_out[5]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[6]\,
      O => \tftData_out[5]_i_13_n_0\
    );
\tftData_out[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[5]_i_14_n_0\
    );
\tftData_out[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6F6F69FF696F69F"
    )
        port map (
      I0 => \stepCount_reg_n_0_[2]\,
      I1 => \tftData_out[5]_i_17_n_0\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[8]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => data6(7),
      O => \tftData_out[5]_i_15_n_0\
    );
\tftData_out[5]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"508A"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \y0_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[3]\,
      O => \tftData_out[5]_i_16_n_0\
    );
\tftData_out[5]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \stepCount_reg_n_0_[0]\,
      I1 => \stepCount_reg_n_0_[5]\,
      O => \tftData_out[5]_i_17_n_0\
    );
\tftData_out[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tftData_in(5),
      I1 => override,
      O => \tftData_out[5]_i_2_n_0\
    );
\tftData_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFBFBFFFB"
    )
        port map (
      I0 => override,
      I1 => \tftData_out[5]_i_5_n_0\,
      I2 => \tftData_out[5]_i_6_n_0\,
      I3 => \tftData_out[5]_i_7_n_0\,
      I4 => \tftData_out[5]_i_8_n_0\,
      I5 => \stateIdx__0\(0),
      O => \tftData_out[5]_i_3_n_0\
    );
\tftData_out[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[5]_i_9_n_0\,
      I1 => \tftData_out[5]_i_10_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[5]_i_11_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[5]_i_12_n_0\,
      O => \tftData_out[5]_i_4_n_0\
    );
\tftData_out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0010202C100000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => \tftData_out[5]_i_13_n_0\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \tftData_out[5]_i_14_n_0\,
      O => \tftData_out[5]_i_5_n_0\
    );
\tftData_out[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEEEEE"
    )
        port map (
      I0 => \tftData_out[5]_i_15_n_0\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \y1_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \tftData_out[5]_i_16_n_0\,
      O => \tftData_out[5]_i_6_n_0\
    );
\tftData_out[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FF45FF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => data2(7),
      O => \tftData_out[5]_i_7_n_0\
    );
\tftData_out[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000300000F5FF"
    )
        port map (
      I0 => \x0_reg_n_0_[5]\,
      I1 => \x1_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \stepCount_reg_n_0_[5]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \tftData_out[5]_i_8_n_0\
    );
\tftData_out[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(13),
      I1 => pixel1(5),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(13),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(5),
      O => \tftData_out[5]_i_9_n_0\
    );
\tftData_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \tftData_out[6]_i_2_n_0\,
      I1 => \tftData_out[6]_i_3_n_0\,
      I2 => \tftData_out[7]_i_10_n_0\,
      I3 => \tftData_out[6]_i_4_n_0\,
      I4 => tftData_in(6),
      I5 => override,
      O => \tftData_out[6]_i_1_n_0\
    );
\tftData_out[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(6),
      I1 => \pixel7_reg_n_0_[6]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(6),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[6]\,
      O => \tftData_out[6]_i_10_n_0\
    );
\tftData_out[6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFFFBF"
    )
        port map (
      I0 => \tftData_out[0]_i_12_n_0\,
      I1 => \y0_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => data6(7),
      O => \tftData_out[6]_i_11_n_0\
    );
\tftData_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1011101011111111"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stateIdx__0\(0),
      I2 => \tftData_out[6]_i_5_n_0\,
      I3 => \tftData_out[7]_i_19_n_0\,
      I4 => \x0_reg_n_0_[6]\,
      I5 => \tftData_out[6]_i_6_n_0\,
      O => \tftData_out[6]_i_2_n_0\
    );
\tftData_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[6]_i_7_n_0\,
      I1 => \tftData_out[6]_i_8_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[6]_i_9_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[6]_i_10_n_0\,
      O => \tftData_out[6]_i_3_n_0\
    );
\tftData_out[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \pixel7_reg_n_0_[6]\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stateIdx__0\(0),
      O => \tftData_out[6]_i_4_n_0\
    );
\tftData_out[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \tftData_out[7]_i_34_n_0\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \y1_reg_n_0_[6]\,
      O => \tftData_out[6]_i_5_n_0\
    );
\tftData_out[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1D0000FFFFFFFF"
    )
        port map (
      I0 => data2(7),
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \x1_reg_n_0_[6]\,
      I3 => \tftData_out[7]_i_35_n_0\,
      I4 => \tftData_out[6]_i_11_n_0\,
      I5 => \tftData_out[1]_i_8_n_0\,
      O => \tftData_out[6]_i_6_n_0\
    );
\tftData_out[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(14),
      I1 => pixel1(6),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(14),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(6),
      O => \tftData_out[6]_i_7_n_0\
    );
\tftData_out[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(14),
      I1 => pixel3(6),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(14),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(6),
      O => \tftData_out[6]_i_8_n_0\
    );
\tftData_out[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(6),
      I1 => \pixel5_reg_n_0_[6]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(6),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[6]\,
      O => \tftData_out[6]_i_9_n_0\
    );
\tftData_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEFEEEEEEEE"
    )
        port map (
      I0 => \tftData_out[7]_i_3_n_0\,
      I1 => override,
      I2 => \tftData_out[7]_i_4_n_0\,
      I3 => \tftData_out[7]_i_5_n_0\,
      I4 => \tftData_out[7]_i_6_n_0\,
      I5 => \tftData_out[7]_i_7_n_0\,
      O => \tftData_out[7]_i_1_n_0\
    );
\tftData_out[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \stepCount_reg_n_0_[9]\,
      I1 => \tftData_out[7]_i_28_n_0\,
      O => \tftData_out[7]_i_10_n_0\
    );
\tftData_out[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \pixel7_reg_n_0_[7]\,
      I1 => \tftData_out[7]_i_10_n_0\,
      I2 => \stateIdx__0\(0),
      O => \tftData_out[7]_i_11_n_0\
    );
\tftData_out[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \stateIdx__0\(0),
      I1 => \stateIdx__0\(1),
      O => \tftData_out[7]_i_12_n_0\
    );
\tftData_out[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[7]\,
      O => \tftData_out[7]_i_15_n_0\
    );
\tftData_out[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[7]_i_16_n_0\
    );
\tftData_out[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFFFFFBFAAAAAA"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \stepCount_reg_n_0_[1]\,
      I5 => \stepCount_reg_n_0_[0]\,
      O => \tftData_out[7]_i_17_n_0\
    );
\tftData_out[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBF4FFFBEBFCF5FD"
    )
        port map (
      I0 => \stepCount_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[2]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => \tftData_out[7]_i_18_n_0\
    );
\tftData_out[7]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFD7F"
    )
        port map (
      I0 => \stepCount_reg_n_0_[0]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \tftData_out[7]_i_33_n_0\,
      O => \tftData_out[7]_i_19_n_0\
    );
\tftData_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000AAFEAAFE"
    )
        port map (
      I0 => \tftData_out[7]_i_8_n_0\,
      I1 => \tftData_out[7]_i_9_n_0\,
      I2 => \tftData_out[7]_i_10_n_0\,
      I3 => \tftData_out[7]_i_11_n_0\,
      I4 => tftData_in(7),
      I5 => override,
      O => \tftData_out[7]_i_2_n_0\
    );
\tftData_out[7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => \y1_reg_n_0_[7]\,
      I3 => \tftData_out[7]_i_34_n_0\,
      O => \tftData_out[7]_i_20_n_0\
    );
\tftData_out[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF1D0000FFFFFFFF"
    )
        port map (
      I0 => data2(7),
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \x1_reg_n_0_[7]\,
      I3 => \tftData_out[7]_i_35_n_0\,
      I4 => \tftData_out[7]_i_36_n_0\,
      I5 => \tftData_out[1]_i_8_n_0\,
      O => \tftData_out[7]_i_21_n_0\
    );
\tftData_out[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel1(15),
      I1 => pixel1(7),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => \pixel0__0\(15),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel0__0\(7),
      O => \tftData_out[7]_i_22_n_0\
    );
\tftData_out[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => pixel3(15),
      I1 => pixel3(7),
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => pixel2(15),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => pixel2(7),
      O => \tftData_out[7]_i_23_n_0\
    );
\tftData_out[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400804800404804"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \tftData_out[7]_i_39_n_0\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[7]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \tftData_out[7]_i_24_n_0\
    );
\tftData_out[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data10(7),
      I1 => \pixel5_reg_n_0_[7]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data8(7),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel4_reg_n_0_[7]\,
      O => \tftData_out[7]_i_25_n_0\
    );
\tftData_out[7]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[0]\,
      I1 => \tftData_out[7]_i_40_n_0\,
      I2 => \tftData_out[7]_i_41_n_0\,
      I3 => \tftData_out[7]_i_42_n_0\,
      I4 => \tftData_out[7]_i_43_n_0\,
      O => \tftData_out[7]_i_26_n_0\
    );
\tftData_out[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data14(7),
      I1 => \pixel7_reg_n_0_[7]\,
      I2 => \tftData_out[7]_i_37_n_0\,
      I3 => data12(7),
      I4 => \tftData_out[7]_i_38_n_0\,
      I5 => \pixel6_reg_n_0_[7]\,
      O => \tftData_out[7]_i_27_n_0\
    );
\tftData_out[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \stepCount_reg_n_0_[13]\,
      I1 => \stepCount_reg_n_0_[14]\,
      I2 => \stepCount_reg_n_0_[15]\,
      I3 => \stepCount_reg_n_0_[10]\,
      I4 => \stepCount_reg_n_0_[11]\,
      I5 => \stepCount_reg_n_0_[12]\,
      O => \tftData_out[7]_i_28_n_0\
    );
\tftData_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004550400"
    )
        port map (
      I0 => \tftData_out[7]_i_12_n_0\,
      I1 => \p_0_out_inferred__4/tftData_out_reg[7]_i_13_n_0\,
      I2 => \stepCount_reg_n_0_[8]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \p_0_out_inferred__4/tftData_out_reg[7]_i_14_n_0\,
      I5 => \tftData_out[7]_i_10_n_0\,
      O => \tftData_out[7]_i_3_n_0\
    );
\tftData_out[7]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE7FFFFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \tftData_out[7]_i_48_n_0\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \stepCount_reg_n_0_[4]\,
      O => \tftData_out[7]_i_33_n_0\
    );
\tftData_out[7]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \stepCount[15]_i_7_n_0\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \stepCount_reg_n_0_[6]\,
      O => \tftData_out[7]_i_34_n_0\
    );
\tftData_out[7]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \tftData_out[7]_i_49_n_0\,
      O => \tftData_out[7]_i_35_n_0\
    );
\tftData_out[7]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF37F7"
    )
        port map (
      I0 => \y0_reg_n_0_[7]\,
      I1 => \stepCount_reg_n_0_[2]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => data6(7),
      I4 => \tftData_out[0]_i_12_n_0\,
      O => \tftData_out[7]_i_36_n_0\
    );
\tftData_out[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7FFBC"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => \tftData_out[7]_i_50_n_0\,
      I3 => \stepCount_reg_n_0_[1]\,
      I4 => \stepCount_reg_n_0_[4]\,
      I5 => \tftData_out[7]_i_51_n_0\,
      O => \tftData_out[7]_i_37_n_0\
    );
\tftData_out[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A5690000"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[5]\,
      I2 => \stepCount_reg_n_0_[6]\,
      I3 => \stepCount_reg_n_0_[4]\,
      I4 => \tftData_out[7]_i_52_n_0\,
      I5 => \tftData_out[7]_i_53_n_0\,
      O => \tftData_out[7]_i_38_n_0\
    );
\tftData_out[7]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000801"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \tftData_out[7]_i_50_n_0\,
      I4 => \stepCount_reg_n_0_[8]\,
      I5 => \stepCount_reg_n_0_[0]\,
      O => \tftData_out[7]_i_39_n_0\
    );
\tftData_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stepCount_reg_n_0_[3]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \tftData_out[7]_i_15_n_0\,
      I4 => \stepCount_reg_n_0_[0]\,
      I5 => \tftData_out[7]_i_16_n_0\,
      O => \tftData_out[7]_i_4_n_0\
    );
\tftData_out[7]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE5DAFFFFEFDAFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[3]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \stepCount_reg_n_0_[4]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => \tftData_out[7]_i_40_n_0\
    );
\tftData_out[7]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000009000009"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[0]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[7]\,
      I5 => \stepCount_reg_n_0_[8]\,
      O => \tftData_out[7]_i_41_n_0\
    );
\tftData_out[7]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDCCA"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[8]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[7]_i_42_n_0\
    );
\tftData_out[7]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3B4"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[4]\,
      O => \tftData_out[7]_i_43_n_0\
    );
\tftData_out[7]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[7]\,
      O => \tftData_out[7]_i_48_n_0\
    );
\tftData_out[7]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDBFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[3]\,
      I1 => \stepCount_reg_n_0_[4]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \stepCount_reg_n_0_[7]\,
      O => \tftData_out[7]_i_49_n_0\
    );
\tftData_out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF3044"
    )
        port map (
      I0 => \stepCount_reg_n_0_[4]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[2]\,
      I3 => \stepCount_reg_n_0_[7]\,
      I4 => \tftData_out[7]_i_17_n_0\,
      I5 => \tftData_out[7]_i_18_n_0\,
      O => \tftData_out[7]_i_5_n_0\
    );
\tftData_out[7]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[2]\,
      O => \tftData_out[7]_i_50_n_0\
    );
\tftData_out[7]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEBDFFFBDFEFFE"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[7]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[6]\,
      I4 => \stepCount_reg_n_0_[3]\,
      I5 => \stepCount_reg_n_0_[0]\,
      O => \tftData_out[7]_i_51_n_0\
    );
\tftData_out[7]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02201001"
    )
        port map (
      I0 => \stepCount_reg_n_0_[1]\,
      I1 => \stepCount_reg_n_0_[0]\,
      I2 => \stepCount_reg_n_0_[5]\,
      I3 => \stepCount_reg_n_0_[2]\,
      I4 => \stepCount_reg_n_0_[4]\,
      O => \tftData_out[7]_i_52_n_0\
    );
\tftData_out[7]_i_53\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEE7F9BE"
    )
        port map (
      I0 => \stepCount_reg_n_0_[8]\,
      I1 => \stepCount_reg_n_0_[6]\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \stepCount_reg_n_0_[4]\,
      O => \tftData_out[7]_i_53_n_0\
    );
\tftData_out[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200A0A154AA0608"
    )
        port map (
      I0 => \stepCount_reg_n_0_[5]\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[2]\,
      I4 => \stepCount_reg_n_0_[6]\,
      I5 => \stepCount_reg_n_0_[3]\,
      O => \tftData_out[7]_i_6_n_0\
    );
\tftData_out[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \stateIdx__0\(1),
      I1 => \stateIdx__0\(0),
      O => \tftData_out[7]_i_7_n_0\
    );
\tftData_out[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111010011111111"
    )
        port map (
      I0 => \tftData_out[7]_i_10_n_0\,
      I1 => \stateIdx__0\(0),
      I2 => \tftData_out[7]_i_19_n_0\,
      I3 => \x0_reg_n_0_[7]\,
      I4 => \tftData_out[7]_i_20_n_0\,
      I5 => \tftData_out[7]_i_21_n_0\,
      O => \tftData_out[7]_i_8_n_0\
    );
\tftData_out[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \tftData_out[7]_i_22_n_0\,
      I1 => \tftData_out[7]_i_23_n_0\,
      I2 => \tftData_out[7]_i_24_n_0\,
      I3 => \tftData_out[7]_i_25_n_0\,
      I4 => \tftData_out[7]_i_26_n_0\,
      I5 => \tftData_out[7]_i_27_n_0\,
      O => \tftData_out[7]_i_9_n_0\
    );
\tftData_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[0]_i_1_n_0\,
      Q => tftData_out(0),
      R => nEnable
    );
\tftData_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[1]_i_1_n_0\,
      Q => tftData_out(1),
      R => nEnable
    );
\tftData_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[2]_i_1_n_0\,
      Q => tftData_out(2),
      R => nEnable
    );
\tftData_out_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tftData_out[2]_i_13_n_0\,
      I1 => \tftData_out[2]_i_14_n_0\,
      O => \tftData_out_reg[2]_i_6_n_0\,
      S => \stepCount_reg_n_0_[4]\
    );
\tftData_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[3]_i_1_n_0\,
      Q => tftData_out(3),
      R => nEnable
    );
\tftData_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[4]_i_1_n_0\,
      Q => tftData_out(4),
      R => nEnable
    );
\tftData_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[5]_i_1_n_0\,
      Q => tftData_out(5),
      R => nEnable
    );
\tftData_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[6]_i_1_n_0\,
      Q => tftData_out(6),
      R => nEnable
    );
\tftData_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tftData_out[7]_i_1_n_0\,
      D => \tftData_out[7]_i_2_n_0\,
      Q => tftData_out(7),
      R => nEnable
    );
\x0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(24),
      Q => \x0_reg_n_0_[0]\,
      R => '0'
    );
\x0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(25),
      Q => \x0_reg_n_0_[1]\,
      R => '0'
    );
\x0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(26),
      Q => \x0_reg_n_0_[2]\,
      R => '0'
    );
\x0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(27),
      Q => \x0_reg_n_0_[3]\,
      R => '0'
    );
\x0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(28),
      Q => \x0_reg_n_0_[4]\,
      R => '0'
    );
\x0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(29),
      Q => \x0_reg_n_0_[5]\,
      R => '0'
    );
\x0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(30),
      Q => \x0_reg_n_0_[6]\,
      R => '0'
    );
\x0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(31),
      Q => \x0_reg_n_0_[7]\,
      R => '0'
    );
\x1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \x1[15]_i_2_n_0\,
      I1 => \x1[15]_i_3_n_0\,
      I2 => \stepCount_reg_n_0_[7]\,
      I3 => \stepCount_reg_n_0_[5]\,
      I4 => \tftData_out[7]_i_7_n_0\,
      I5 => \tftData_out[7]_i_10_n_0\,
      O => \x1[15]_i_1_n_0\
    );
\x1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => \stepCount_reg_n_0_[0]\,
      I1 => \stepCount_reg_n_0_[1]\,
      I2 => \stepCount_reg_n_0_[4]\,
      I3 => \stepCount_reg_n_0_[3]\,
      I4 => \stepCount_reg_n_0_[2]\,
      I5 => ready_i_2_n_0,
      O => \x1[15]_i_2_n_0\
    );
\x1[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \stepCount_reg_n_0_[6]\,
      I1 => \stepCount_reg_n_0_[8]\,
      O => \x1[15]_i_3_n_0\
    );
\x1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(0),
      Q => \x1_reg_n_0_[0]\,
      R => '0'
    );
\x1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(15),
      Q => data2(7),
      R => '0'
    );
\x1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(1),
      Q => \x1_reg_n_0_[1]\,
      R => '0'
    );
\x1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(2),
      Q => \x1_reg_n_0_[2]\,
      R => '0'
    );
\x1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(3),
      Q => \x1_reg_n_0_[3]\,
      R => '0'
    );
\x1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(4),
      Q => \x1_reg_n_0_[4]\,
      R => '0'
    );
\x1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(5),
      Q => \x1_reg_n_0_[5]\,
      R => '0'
    );
\x1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(6),
      Q => \x1_reg_n_0_[6]\,
      R => '0'
    );
\x1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(7),
      Q => \x1_reg_n_0_[7]\,
      R => '0'
    );
\x1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => minusOp(8),
      Q => data2(0),
      R => '0'
    );
\y0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(16),
      Q => \y0_reg_n_0_[0]\,
      R => '0'
    );
\y0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(17),
      Q => \y0_reg_n_0_[1]\,
      R => '0'
    );
\y0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(18),
      Q => \y0_reg_n_0_[2]\,
      R => '0'
    );
\y0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(19),
      Q => \y0_reg_n_0_[3]\,
      R => '0'
    );
\y0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(20),
      Q => \y0_reg_n_0_[4]\,
      R => '0'
    );
\y0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(21),
      Q => \y0_reg_n_0_[5]\,
      R => '0'
    );
\y0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(22),
      Q => \y0_reg_n_0_[6]\,
      R => '0'
    );
\y0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \frame_height[7]_i_1_n_0\,
      D => bramData(23),
      Q => \y0_reg_n_0_[7]\,
      R => '0'
    );
\y1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry_n_7\,
      Q => \y1_reg_n_0_[0]\,
      R => '0'
    );
\y1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry__1_n_6\,
      Q => data6(7),
      R => '0'
    );
\y1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry_n_6\,
      Q => \y1_reg_n_0_[1]\,
      R => '0'
    );
\y1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry_n_5\,
      Q => \y1_reg_n_0_[2]\,
      R => '0'
    );
\y1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry_n_4\,
      Q => \y1_reg_n_0_[3]\,
      R => '0'
    );
\y1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry__0_n_7\,
      Q => \y1_reg_n_0_[4]\,
      R => '0'
    );
\y1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry__0_n_6\,
      Q => \y1_reg_n_0_[5]\,
      R => '0'
    );
\y1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry__0_n_5\,
      Q => \y1_reg_n_0_[6]\,
      R => '0'
    );
\y1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry__0_n_4\,
      Q => \y1_reg_n_0_[7]\,
      R => '0'
    );
\y1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \x1[15]_i_1_n_0\,
      D => \minusOp_inferred__0/i___0_carry__1_n_7\,
      Q => data6(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TTF_Driver_0_0 is
  port (
    clk : in STD_LOGIC;
    nEnable : in STD_LOGIC;
    ready : out STD_LOGIC;
    start : in STD_LOGIC;
    override : in STD_LOGIC;
    DC_in : in STD_LOGIC;
    WRX_in : in STD_LOGIC;
    tftData_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DC_out : out STD_LOGIC;
    WRX_out : out STD_LOGIC;
    tftData_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bramEN : out STD_LOGIC;
    bramAddress : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bramData : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_TTF_Driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_TTF_Driver_0_0 : entity is "design_1_TTF_Driver_0_0,TTF_Driver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_TTF_Driver_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_TTF_Driver_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_TTF_Driver_0_0 : entity is "TTF_Driver,Vivado 2024.1";
end design_1_TTF_Driver_0_0;

architecture STRUCTURE of design_1_TTF_Driver_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bramaddress\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  bramAddress(31 downto 2) <= \^bramaddress\(31 downto 2);
  bramAddress(1) <= \<const0>\;
  bramAddress(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_TTF_Driver_0_0_TTF_Driver
     port map (
      DC_in => DC_in,
      DC_out => DC_out,
      WRX_in => WRX_in,
      WRX_out => WRX_out,
      bramAddress(29 downto 0) => \^bramaddress\(31 downto 2),
      bramData(31 downto 0) => bramData(31 downto 0),
      bramEN => bramEN,
      clk => clk,
      nEnable => nEnable,
      override => override,
      ready => ready,
      start => start,
      tftData_in(7 downto 0) => tftData_in(7 downto 0),
      tftData_out(7 downto 0) => tftData_out(7 downto 0)
    );
end STRUCTURE;
