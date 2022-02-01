set moduleName test_scalaire_Pipeline_loop_1
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
set C_modelName {test_scalaire_Pipeline_loop_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ bus_B int 32 regular {axi_master 0}  }
	{ sext_ln13_1 int 30 regular  }
	{ bus_A int 32 regular {axi_master 0}  }
	{ sext_ln13 int 30 regular  }
	{ tmp1_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bus_B", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln13_1", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "bus_A", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln13", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "tmp1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 100
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_bus_B_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_B_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_B_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_B_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_B_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_B_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_B_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_B_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_B_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_B_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_B_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_B_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_B_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_B_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_B_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_B_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_B_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_B_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_B_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_B_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_B_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_B_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_B_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_B_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_B_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_B_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_B_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_B_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_B_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_B_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_bus_B_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_B_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_B_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_B_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bus_B_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_B_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_B_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bus_B_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_B_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln13_1 sc_in sc_lv 30 signal 1 } 
	{ m_axi_bus_A_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_A_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_A_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_A_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_A_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_A_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_A_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_A_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_A_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_A_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_A_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_A_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_A_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_A_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_A_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_A_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_A_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_A_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_A_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_A_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_A_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_A_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_A_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_A_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_A_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_A_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_A_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_A_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_A_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_A_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_bus_A_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_A_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_bus_A_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_bus_A_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_bus_A_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_A_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_A_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_bus_A_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_bus_A_BUSER sc_in sc_lv 1 signal 2 } 
	{ sext_ln13 sc_in sc_lv 30 signal 3 } 
	{ tmp1_out sc_out sc_lv 32 signal 4 } 
	{ tmp1_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_bus_B_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bus_B_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bus_B_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bus_B_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWID" }} , 
 	{ "name": "m_axi_bus_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bus_B_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_B", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bus_B_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_B", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bus_B_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_B", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bus_B_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bus_B_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_B", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bus_B_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bus_B_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bus_B_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bus_B_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "WVALID" }} , 
 	{ "name": "m_axi_bus_B_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "WREADY" }} , 
 	{ "name": "m_axi_bus_B_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "WDATA" }} , 
 	{ "name": "m_axi_bus_B_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bus_B_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "WLAST" }} , 
 	{ "name": "m_axi_bus_B_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "WID" }} , 
 	{ "name": "m_axi_bus_B_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "WUSER" }} , 
 	{ "name": "m_axi_bus_B_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bus_B_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bus_B_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bus_B_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "ARID" }} , 
 	{ "name": "m_axi_bus_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bus_B_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_B", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bus_B_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_B", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bus_B_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_B", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bus_B_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bus_B_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_B", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bus_B_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bus_B_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_B", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bus_B_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bus_B_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "RVALID" }} , 
 	{ "name": "m_axi_bus_B_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "RREADY" }} , 
 	{ "name": "m_axi_bus_B_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "RDATA" }} , 
 	{ "name": "m_axi_bus_B_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "RLAST" }} , 
 	{ "name": "m_axi_bus_B_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "RID" }} , 
 	{ "name": "m_axi_bus_B_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "RUSER" }} , 
 	{ "name": "m_axi_bus_B_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_B", "role": "RRESP" }} , 
 	{ "name": "m_axi_bus_B_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "BVALID" }} , 
 	{ "name": "m_axi_bus_B_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "BREADY" }} , 
 	{ "name": "m_axi_bus_B_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_B", "role": "BRESP" }} , 
 	{ "name": "m_axi_bus_B_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "BID" }} , 
 	{ "name": "m_axi_bus_B_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "BUSER" }} , 
 	{ "name": "sext_ln13_1", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "sext_ln13_1", "role": "default" }} , 
 	{ "name": "m_axi_bus_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bus_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bus_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bus_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWID" }} , 
 	{ "name": "m_axi_bus_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "AWLEN" }} , 
 	{ "name": "m_axi_bus_A_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_A", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_bus_A_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_A", "role": "AWBURST" }} , 
 	{ "name": "m_axi_bus_A_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_A", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_bus_A_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_bus_A_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_A", "role": "AWPROT" }} , 
 	{ "name": "m_axi_bus_A_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "AWQOS" }} , 
 	{ "name": "m_axi_bus_A_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "AWREGION" }} , 
 	{ "name": "m_axi_bus_A_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWUSER" }} , 
 	{ "name": "m_axi_bus_A_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "WVALID" }} , 
 	{ "name": "m_axi_bus_A_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "WREADY" }} , 
 	{ "name": "m_axi_bus_A_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "WDATA" }} , 
 	{ "name": "m_axi_bus_A_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "WSTRB" }} , 
 	{ "name": "m_axi_bus_A_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "WLAST" }} , 
 	{ "name": "m_axi_bus_A_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "WID" }} , 
 	{ "name": "m_axi_bus_A_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "WUSER" }} , 
 	{ "name": "m_axi_bus_A_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "ARVALID" }} , 
 	{ "name": "m_axi_bus_A_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "ARREADY" }} , 
 	{ "name": "m_axi_bus_A_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "ARADDR" }} , 
 	{ "name": "m_axi_bus_A_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "ARID" }} , 
 	{ "name": "m_axi_bus_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "ARLEN" }} , 
 	{ "name": "m_axi_bus_A_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_A", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_bus_A_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_A", "role": "ARBURST" }} , 
 	{ "name": "m_axi_bus_A_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_A", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_bus_A_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_bus_A_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bus_A", "role": "ARPROT" }} , 
 	{ "name": "m_axi_bus_A_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "ARQOS" }} , 
 	{ "name": "m_axi_bus_A_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bus_A", "role": "ARREGION" }} , 
 	{ "name": "m_axi_bus_A_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "ARUSER" }} , 
 	{ "name": "m_axi_bus_A_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "RVALID" }} , 
 	{ "name": "m_axi_bus_A_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "RREADY" }} , 
 	{ "name": "m_axi_bus_A_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "RDATA" }} , 
 	{ "name": "m_axi_bus_A_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "RLAST" }} , 
 	{ "name": "m_axi_bus_A_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "RID" }} , 
 	{ "name": "m_axi_bus_A_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "RUSER" }} , 
 	{ "name": "m_axi_bus_A_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_A", "role": "RRESP" }} , 
 	{ "name": "m_axi_bus_A_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "BVALID" }} , 
 	{ "name": "m_axi_bus_A_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "BREADY" }} , 
 	{ "name": "m_axi_bus_A_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "bus_A", "role": "BRESP" }} , 
 	{ "name": "m_axi_bus_A_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "BID" }} , 
 	{ "name": "m_axi_bus_A_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "BUSER" }} , 
 	{ "name": "sext_ln13", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "sext_ln13", "role": "default" }} , 
 	{ "name": "tmp1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tmp1_out", "role": "default" }} , 
 	{ "name": "tmp1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tmp1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "test_scalaire_Pipeline_loop_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2827", "EstimateLatencyMax" : "2827",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bus_B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bus_B_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bus_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bus_A_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_10_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_8_max_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_scalaire_Pipeline_loop_1 {
		bus_B {Type I LastRead 1 FirstWrite -1}
		sext_ln13_1 {Type I LastRead 0 FirstWrite -1}
		bus_A {Type I LastRead 1 FirstWrite -1}
		sext_ln13 {Type I LastRead 0 FirstWrite -1}
		tmp1_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2827", "Max" : "2827"}
	, {"Name" : "Interval", "Min" : "2827", "Max" : "2827"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bus_B { m_axi {  { m_axi_bus_B_AWVALID VALID 1 1 }  { m_axi_bus_B_AWREADY READY 0 1 }  { m_axi_bus_B_AWADDR ADDR 1 32 }  { m_axi_bus_B_AWID ID 1 1 }  { m_axi_bus_B_AWLEN LEN 1 32 }  { m_axi_bus_B_AWSIZE SIZE 1 3 }  { m_axi_bus_B_AWBURST BURST 1 2 }  { m_axi_bus_B_AWLOCK LOCK 1 2 }  { m_axi_bus_B_AWCACHE CACHE 1 4 }  { m_axi_bus_B_AWPROT PROT 1 3 }  { m_axi_bus_B_AWQOS QOS 1 4 }  { m_axi_bus_B_AWREGION REGION 1 4 }  { m_axi_bus_B_AWUSER USER 1 1 }  { m_axi_bus_B_WVALID VALID 1 1 }  { m_axi_bus_B_WREADY READY 0 1 }  { m_axi_bus_B_WDATA DATA 1 32 }  { m_axi_bus_B_WSTRB STRB 1 4 }  { m_axi_bus_B_WLAST LAST 1 1 }  { m_axi_bus_B_WID ID 1 1 }  { m_axi_bus_B_WUSER USER 1 1 }  { m_axi_bus_B_ARVALID VALID 1 1 }  { m_axi_bus_B_ARREADY READY 0 1 }  { m_axi_bus_B_ARADDR ADDR 1 32 }  { m_axi_bus_B_ARID ID 1 1 }  { m_axi_bus_B_ARLEN LEN 1 32 }  { m_axi_bus_B_ARSIZE SIZE 1 3 }  { m_axi_bus_B_ARBURST BURST 1 2 }  { m_axi_bus_B_ARLOCK LOCK 1 2 }  { m_axi_bus_B_ARCACHE CACHE 1 4 }  { m_axi_bus_B_ARPROT PROT 1 3 }  { m_axi_bus_B_ARQOS QOS 1 4 }  { m_axi_bus_B_ARREGION REGION 1 4 }  { m_axi_bus_B_ARUSER USER 1 1 }  { m_axi_bus_B_RVALID VALID 0 1 }  { m_axi_bus_B_RREADY READY 1 1 }  { m_axi_bus_B_RDATA DATA 0 32 }  { m_axi_bus_B_RLAST LAST 0 1 }  { m_axi_bus_B_RID ID 0 1 }  { m_axi_bus_B_RUSER USER 0 1 }  { m_axi_bus_B_RRESP RESP 0 2 }  { m_axi_bus_B_BVALID VALID 0 1 }  { m_axi_bus_B_BREADY READY 1 1 }  { m_axi_bus_B_BRESP RESP 0 2 }  { m_axi_bus_B_BID ID 0 1 }  { m_axi_bus_B_BUSER USER 0 1 } } }
	sext_ln13_1 { ap_none {  { sext_ln13_1 in_data 0 30 } } }
	bus_A { m_axi {  { m_axi_bus_A_AWVALID VALID 1 1 }  { m_axi_bus_A_AWREADY READY 0 1 }  { m_axi_bus_A_AWADDR ADDR 1 32 }  { m_axi_bus_A_AWID ID 1 1 }  { m_axi_bus_A_AWLEN LEN 1 32 }  { m_axi_bus_A_AWSIZE SIZE 1 3 }  { m_axi_bus_A_AWBURST BURST 1 2 }  { m_axi_bus_A_AWLOCK LOCK 1 2 }  { m_axi_bus_A_AWCACHE CACHE 1 4 }  { m_axi_bus_A_AWPROT PROT 1 3 }  { m_axi_bus_A_AWQOS QOS 1 4 }  { m_axi_bus_A_AWREGION REGION 1 4 }  { m_axi_bus_A_AWUSER USER 1 1 }  { m_axi_bus_A_WVALID VALID 1 1 }  { m_axi_bus_A_WREADY READY 0 1 }  { m_axi_bus_A_WDATA DATA 1 32 }  { m_axi_bus_A_WSTRB STRB 1 4 }  { m_axi_bus_A_WLAST LAST 1 1 }  { m_axi_bus_A_WID ID 1 1 }  { m_axi_bus_A_WUSER USER 1 1 }  { m_axi_bus_A_ARVALID VALID 1 1 }  { m_axi_bus_A_ARREADY READY 0 1 }  { m_axi_bus_A_ARADDR ADDR 1 32 }  { m_axi_bus_A_ARID ID 1 1 }  { m_axi_bus_A_ARLEN LEN 1 32 }  { m_axi_bus_A_ARSIZE SIZE 1 3 }  { m_axi_bus_A_ARBURST BURST 1 2 }  { m_axi_bus_A_ARLOCK LOCK 1 2 }  { m_axi_bus_A_ARCACHE CACHE 1 4 }  { m_axi_bus_A_ARPROT PROT 1 3 }  { m_axi_bus_A_ARQOS QOS 1 4 }  { m_axi_bus_A_ARREGION REGION 1 4 }  { m_axi_bus_A_ARUSER USER 1 1 }  { m_axi_bus_A_RVALID VALID 0 1 }  { m_axi_bus_A_RREADY READY 1 1 }  { m_axi_bus_A_RDATA DATA 0 32 }  { m_axi_bus_A_RLAST LAST 0 1 }  { m_axi_bus_A_RID ID 0 1 }  { m_axi_bus_A_RUSER USER 0 1 }  { m_axi_bus_A_RRESP RESP 0 2 }  { m_axi_bus_A_BVALID VALID 0 1 }  { m_axi_bus_A_BREADY READY 1 1 }  { m_axi_bus_A_BRESP RESP 0 2 }  { m_axi_bus_A_BID ID 0 1 }  { m_axi_bus_A_BUSER USER 0 1 } } }
	sext_ln13 { ap_none {  { sext_ln13 in_data 0 30 } } }
	tmp1_out { ap_vld {  { tmp1_out out_data 1 32 }  { tmp1_out_ap_vld out_vld 1 1 } } }
}
