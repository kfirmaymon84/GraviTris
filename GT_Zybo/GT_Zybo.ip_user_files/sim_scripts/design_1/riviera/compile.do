transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_17
vlib riviera/processing_system7_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/axi_bram_ctrl_v4_1_10
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/xlconstant_v1_1_9
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_33

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 riviera/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 riviera/processing_system7_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 riviera/axi_gpio_v2_0_33

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/sim/design_1_axi_bram_ctrl_0_bram_0.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33 -93  -incr \
"../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_IO_Mapper_0_0/sim/design_1_IO_Mapper_0_0.vhd" \
"../../../bd/design_1/ip/design_1_TTF_Driver_0_0/sim/design_1_TTF_Driver_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../GT_Zybo.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l blk_mem_gen_v8_4_8 -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l smartconnect_v1_0 -l axi_register_slice_v2_1_31 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

