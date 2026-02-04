set moduleName sha256_final_Pipeline_VITIS_LOOP_106_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 12
set C_modelName {sha256_final_Pipeline_VITIS_LOOP_106_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ zext_ln97 int 4 regular  }
	{ in_data_57 int 8 regular {pointer 1}  }
	{ in_data_63 int 8 regular {pointer 1}  }
	{ in_data_62 int 8 regular {pointer 1}  }
	{ in_data_61 int 8 regular {pointer 1}  }
	{ in_data_60 int 8 regular {pointer 1}  }
	{ in_data_59 int 8 regular {pointer 1}  }
	{ in_data_58 int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln97", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_data_57", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_data_63", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_data_62", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_data_61", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_data_60", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_data_59", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_data_58", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln97 sc_in sc_lv 4 signal 0 } 
	{ in_data_57 sc_out sc_lv 8 signal 1 } 
	{ in_data_57_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ in_data_63 sc_out sc_lv 8 signal 2 } 
	{ in_data_63_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ in_data_62 sc_out sc_lv 8 signal 3 } 
	{ in_data_62_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ in_data_61 sc_out sc_lv 8 signal 4 } 
	{ in_data_61_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ in_data_60 sc_out sc_lv 8 signal 5 } 
	{ in_data_60_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ in_data_59 sc_out sc_lv 8 signal 6 } 
	{ in_data_59_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ in_data_58 sc_out sc_lv 8 signal 7 } 
	{ in_data_58_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln97", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "zext_ln97", "role": "default" }} , 
 	{ "name": "in_data_57", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_57", "role": "default" }} , 
 	{ "name": "in_data_57_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_57", "role": "ap_vld" }} , 
 	{ "name": "in_data_63", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_63", "role": "default" }} , 
 	{ "name": "in_data_63_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_63", "role": "ap_vld" }} , 
 	{ "name": "in_data_62", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_62", "role": "default" }} , 
 	{ "name": "in_data_62_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_62", "role": "ap_vld" }} , 
 	{ "name": "in_data_61", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_61", "role": "default" }} , 
 	{ "name": "in_data_61_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_61", "role": "ap_vld" }} , 
 	{ "name": "in_data_60", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_60", "role": "default" }} , 
 	{ "name": "in_data_60_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_60", "role": "ap_vld" }} , 
 	{ "name": "in_data_59", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_59", "role": "default" }} , 
 	{ "name": "in_data_59_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_59", "role": "ap_vld" }} , 
 	{ "name": "in_data_58", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_data_58", "role": "default" }} , 
 	{ "name": "in_data_58_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "in_data_58", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "sha256_final_Pipeline_VITIS_LOOP_106_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "zext_ln97", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_data_57", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_data_63", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_data_62", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_data_61", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_data_60", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_data_59", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "in_data_58", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sha256_final_Pipeline_VITIS_LOOP_106_2 {
		zext_ln97 {Type I LastRead 0 FirstWrite -1}
		in_data_57 {Type O LastRead -1 FirstWrite 0}
		in_data_63 {Type O LastRead -1 FirstWrite 0}
		in_data_62 {Type O LastRead -1 FirstWrite 0}
		in_data_61 {Type O LastRead -1 FirstWrite 0}
		in_data_60 {Type O LastRead -1 FirstWrite 0}
		in_data_59 {Type O LastRead -1 FirstWrite 0}
		in_data_58 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	zext_ln97 { ap_none {  { zext_ln97 in_data 0 4 } } }
	in_data_57 { ap_vld {  { in_data_57 out_data 1 8 }  { in_data_57_ap_vld out_vld 1 1 } } }
	in_data_63 { ap_vld {  { in_data_63 out_data 1 8 }  { in_data_63_ap_vld out_vld 1 1 } } }
	in_data_62 { ap_vld {  { in_data_62 out_data 1 8 }  { in_data_62_ap_vld out_vld 1 1 } } }
	in_data_61 { ap_vld {  { in_data_61 out_data 1 8 }  { in_data_61_ap_vld out_vld 1 1 } } }
	in_data_60 { ap_vld {  { in_data_60 out_data 1 8 }  { in_data_60_ap_vld out_vld 1 1 } } }
	in_data_59 { ap_vld {  { in_data_59 out_data 1 8 }  { in_data_59_ap_vld out_vld 1 1 } } }
	in_data_58 { ap_vld {  { in_data_58 out_data 1 8 }  { in_data_58_ap_vld out_vld 1 1 } } }
}
