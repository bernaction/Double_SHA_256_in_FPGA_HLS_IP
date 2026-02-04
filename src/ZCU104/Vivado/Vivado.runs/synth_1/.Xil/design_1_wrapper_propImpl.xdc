set_property SRC_FILE_INFO {cfile:d:/Clouds/Dropbox/Vivado_Project/Final/ZCU104/Vivado/Vivado.gen/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.xdc rfile:../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_rst_ps8_0_100M_0/design_1_rst_ps8_0_100M_0.xdc id:1 order:EARLY scoped_inst:design_1_i/rst_ps8_0_100M/U0} [current_design]
set_property SRC_FILE_INFO {cfile:d:/Clouds/Dropbox/Vivado_Project/Final/ZCU104/Vivado/Vivado.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr_aclk_0.xdc rfile:../../../Vivado.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr_aclk_0.xdc id:2 order:EARLY scoped_inst:design_1_i/axi_smc/inst/clk_map/psr_aclk/U0} [current_design]
set_property SRC_FILE_INFO {cfile:B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:3 order:LATE scoped_inst:{design_1_i/axi_smc/inst/switchboards/i_nodes/i_w_node/inst/inst_si_handler/gen_si_handler.gen_request_fifos.gen_req_fifo[0].inst_req_fifo/gen_xpm_memory_fifo.inst_fifo/gen_mem_rep[0].inst_xpm_memory} unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:B:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:4 order:LATE scoped_inst:{design_1_i/axi_smc/inst/switchboards/i_nodes/i_w_node/inst/inst_si_handler/gen_si_handler.gen_request_fifos.gen_req_fifo[1].inst_req_fifo/gen_xpm_memory_fifo.inst_fifo/gen_mem_rep[0].inst_xpm_memory} unmanaged:yes} [current_design]
current_instance design_1_i/rst_ps8_0_100M/U0
set_property src_info {type:SCOPED_XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance design_1_i/axi_smc/inst/clk_map/psr_aclk/U0
set_property src_info {type:SCOPED_XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -type CDC -id {CDC-11} -user "proc_sys_reset" -desc "Timing uncritical paths" -tags "1171415" -scope -internal -to [get_pins -quiet -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ */ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to}]]
current_instance
current_instance {design_1_i/axi_smc/inst/switchboards/i_nodes/i_w_node/inst/inst_si_handler/gen_si_handler.gen_request_fifos.gen_req_fifo[0].inst_req_fifo/gen_xpm_memory_fifo.inst_fifo/gen_mem_rep[0].inst_xpm_memory}
set_property src_info {type:SCOPED_XDC file:3 line:55 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
current_instance
current_instance {design_1_i/axi_smc/inst/switchboards/i_nodes/i_w_node/inst/inst_si_handler/gen_si_handler.gen_request_fifos.gen_req_fifo[1].inst_req_fifo/gen_xpm_memory_fifo.inst_fifo/gen_mem_rep[0].inst_xpm_memory}
set_property src_info {type:SCOPED_XDC file:4 line:55 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -quiet -hier -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
