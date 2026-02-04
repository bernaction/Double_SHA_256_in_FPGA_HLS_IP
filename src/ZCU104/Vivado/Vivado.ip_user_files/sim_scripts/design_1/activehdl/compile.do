transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_19
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_19
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_16
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_33
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_gpio_v2_0_35

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 activehdl/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 activehdl/zynq_ultra_ps_e_vip_v1_0_19
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 activehdl/proc_sys_reset_v5_0_16
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 activehdl/axi_register_slice_v2_1_33
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 activehdl/axi_gpio_v2_0_35

vlog -work xilinx_vip  -sv2k12 "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"B:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_control_s_axi.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_flow_control_loop_pipe_sequential_init.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_final.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_final_Pipeline_VITIS_LOOP_103_1.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_final_Pipeline_VITIS_LOOP_106_2.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_final_Pipeline_VITIS_LOOP_111_3.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_top_Pipeline_1.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_top_Pipeline_VITIS_LOOP_52_4.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_transform.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_transform_Pipeline_VITIS_LOOP_19_2.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_transform_Pipeline_VITIS_LOOP_33_3.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sha256_transform_Pipeline_VITIS_LOOP_33_3_k_ROM_AUTO_1R.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sparsemux_65_5_8_1_1.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sparsemux_97_6_32_1_1.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sparsemux_129_6_32_1_1.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_sparsemux_161_7_8_1_1.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top_state_RAM_AUTO_1R1W.v" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0049/hdl/verilog/sha256_top.v" \
"../../../bd/design_1/ip/design_1_sha256_top_0_0/sim/design_1_sha256_top_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps8_0_100M_0/sim/design_1_rst_ps8_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_sarn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_srn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_sawn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_swn_1.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_sbn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_44/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_45/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_46/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_47/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_48/sim/bd_afc3_m01e_0.sv" \

vlog -work axi_register_slice_v2_1_33  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
"../../../bd/design_1/ip/design_1_cycle_counter_0_0/sim/design_1_cycle_counter_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  \
"../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_sha256_top_0_0/drivers/sha256_top_v1_0/src" "+incdir+B:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

