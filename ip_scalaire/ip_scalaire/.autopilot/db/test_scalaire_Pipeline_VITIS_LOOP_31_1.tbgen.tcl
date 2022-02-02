set moduleName test_scalaire_Pipeline_VITIS_LOOP_31_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {test_scalaire_Pipeline_VITIS_LOOP_31_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bus_res int 32 regular {axi_master 1}  }
	{ sext_ln31 int 30 regular  }
	{ tmp1 float 32 regular {array 16 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bus_res", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "res","offset": { "type": "dynamic","port_name": "res","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln31", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 55
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bus_res_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_res_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_res_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_res_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_res_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_res_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_res_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_res_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_res_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_res_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_res_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_res_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_res_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_res_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_res_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_res_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_res_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_res_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_res_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_res_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_res_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_res_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_res_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_res_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_res_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_res_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_res_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_res_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_res_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_res_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_bus_res_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_res_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_res_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_res_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bus_res_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_res_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_res_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bus_res_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_res_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln31 sc_in sc_lv 30 signal 1 } 
	{ tmp1_address0 sc_out sc_lv 4 signal 2 } 
	{ tmp1_ce0 sc_out sc_logic 1 signal 2 } 
	{ tmp1_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_bus_res_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bus_res_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bus_res_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bus_res_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWID" }} , 
 	{ "name": "m_axi_bus_res_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bus_res_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_res", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bus_res_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_res", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bus_res_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_res", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bus_res_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bus_res_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_res", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bus_res_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bus_res_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bus_res_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bus_res_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "WVALID" }} , 
 	{ "name": "m_axi_bus_res_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "WREADY" }} , 
 	{ "name": "m_axi_bus_res_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "WDATA" }} , 
 	{ "name": "m_axi_bus_res_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bus_res_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "WLAST" }} , 
 	{ "name": "m_axi_bus_res_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "WID" }} , 
 	{ "name": "m_axi_bus_res_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "WUSER" }} , 
 	{ "name": "m_axi_bus_res_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bus_res_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bus_res_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bus_res_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "ARID" }} , 
 	{ "name": "m_axi_bus_res_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bus_res_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_res", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bus_res_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_res", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bus_res_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_res", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bus_res_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bus_res_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_res", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bus_res_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bus_res_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_res", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bus_res_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bus_res_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "RVALID" }} , 
 	{ "name": "m_axi_bus_res_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "RREADY" }} , 
 	{ "name": "m_axi_bus_res_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "RDATA" }} , 
 	{ "name": "m_axi_bus_res_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "RLAST" }} , 
 	{ "name": "m_axi_bus_res_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "RID" }} , 
 	{ "name": "m_axi_bus_res_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "RUSER" }} , 
 	{ "name": "m_axi_bus_res_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_res", "role": "RRESP" }} , 
 	{ "name": "m_axi_bus_res_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "BVALID" }} , 
 	{ "name": "m_axi_bus_res_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "BREADY" }} , 
 	{ "name": "m_axi_bus_res_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_res", "role": "BRESP" }} , 
 	{ "name": "m_axi_bus_res_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "BID" }} , 
 	{ "name": "m_axi_bus_res_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "BUSER" }} , 
 	{ "name": "sext_ln31", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "sext_ln31", "role": "default" }} , 
 	{ "name": "tmp1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tmp1", "role": "address0" }} , 
 	{ "name": "tmp1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tmp1", "role": "ce0" }} , 
 	{ "name": "tmp1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "test_scalaire_Pipeline_VITIS_LOOP_31_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bus_res", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bus_res_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln31", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_31_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_scalaire_Pipeline_VITIS_LOOP_31_1 {
		bus_res {Type O LastRead -1 FirstWrite 2}
		sext_ln31 {Type I LastRead 0 FirstWrite -1}
		tmp1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bus_res { m_axi {  { m_axi_bus_res_AWVALID VALID 1 1 }  { m_axi_bus_res_AWREADY READY 0 1 }  { m_axi_bus_res_AWADDR ADDR 1 32 }  { m_axi_bus_res_AWID ID 1 1 }  { m_axi_bus_res_AWLEN LEN 1 32 }  { m_axi_bus_res_AWSIZE SIZE 1 3 }  { m_axi_bus_res_AWBURST BURST 1 2 }  { m_axi_bus_res_AWLOCK LOCK 1 2 }  { m_axi_bus_res_AWCACHE CACHE 1 4 }  { m_axi_bus_res_AWPROT PROT 1 3 }  { m_axi_bus_res_AWQOS QOS 1 4 }  { m_axi_bus_res_AWREGION REGION 1 4 }  { m_axi_bus_res_AWUSER USER 1 1 }  { m_axi_bus_res_WVALID VALID 1 1 }  { m_axi_bus_res_WREADY READY 0 1 }  { m_axi_bus_res_WDATA DATA 1 32 }  { m_axi_bus_res_WSTRB STRB 1 4 }  { m_axi_bus_res_WLAST LAST 1 1 }  { m_axi_bus_res_WID ID 1 1 }  { m_axi_bus_res_WUSER USER 1 1 }  { m_axi_bus_res_ARVALID VALID 1 1 }  { m_axi_bus_res_ARREADY READY 0 1 }  { m_axi_bus_res_ARADDR ADDR 1 32 }  { m_axi_bus_res_ARID ID 1 1 }  { m_axi_bus_res_ARLEN LEN 1 32 }  { m_axi_bus_res_ARSIZE SIZE 1 3 }  { m_axi_bus_res_ARBURST BURST 1 2 }  { m_axi_bus_res_ARLOCK LOCK 1 2 }  { m_axi_bus_res_ARCACHE CACHE 1 4 }  { m_axi_bus_res_ARPROT PROT 1 3 }  { m_axi_bus_res_ARQOS QOS 1 4 }  { m_axi_bus_res_ARREGION REGION 1 4 }  { m_axi_bus_res_ARUSER USER 1 1 }  { m_axi_bus_res_RVALID VALID 0 1 }  { m_axi_bus_res_RREADY READY 1 1 }  { m_axi_bus_res_RDATA DATA 0 32 }  { m_axi_bus_res_RLAST LAST 0 1 }  { m_axi_bus_res_RID ID 0 1 }  { m_axi_bus_res_RUSER USER 0 1 }  { m_axi_bus_res_RRESP RESP 0 2 }  { m_axi_bus_res_BVALID VALID 0 1 }  { m_axi_bus_res_BREADY READY 1 1 }  { m_axi_bus_res_BRESP RESP 0 2 }  { m_axi_bus_res_BID ID 0 1 }  { m_axi_bus_res_BUSER USER 0 1 } } }
	sext_ln31 { ap_none {  { sext_ln31 in_data 0 30 } } }
	tmp1 { ap_memory {  { tmp1_address0 mem_address 1 4 }  { tmp1_ce0 mem_ce 1 1 }  { tmp1_q0 mem_dout 0 32 } } }
}
