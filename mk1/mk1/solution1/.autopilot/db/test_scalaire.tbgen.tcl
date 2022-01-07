set moduleName test_scalaire
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {test_scalaire}
set C_modelType { void 0 }
set C_modelArgList {
	{ bus_A int 32 regular {axi_master 0}  }
	{ bus_B int 32 regular {axi_master 0}  }
	{ bus_res int 32 regular {axi_master 1}  }
	{ A int 32 regular {axi_slave 0}  }
	{ B int 32 regular {axi_slave 0}  }
	{ res int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bus_A", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "A","offset": { "type": "dynamic","port_name": "A","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bus_B", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "B","offset": { "type": "dynamic","port_name": "B","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "bus_res", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "res","offset": { "type": "dynamic","port_name": "res","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "A", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "B", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "res", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_bus_A_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_A_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_A_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_A_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_A_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_bus_A_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_A_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_A_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_A_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_A_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_A_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_A_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_A_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_A_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_A_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_A_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_A_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_A_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_A_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_bus_A_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_A_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_bus_A_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_A_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_A_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_bus_A_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_bus_A_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_bus_A_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_bus_A_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_A_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_A_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_bus_A_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_A_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_A_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_A_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bus_A_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_bus_A_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_bus_A_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_bus_A_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_A_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_bus_B_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bus_B_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bus_B_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bus_B_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bus_B_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_bus_B_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bus_B_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bus_B_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bus_B_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bus_B_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bus_B_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bus_B_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bus_B_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_bus_B_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_bus_B_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bus_B_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bus_B_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_bus_B_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_bus_B_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_bus_B_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_bus_B_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_bus_B_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_bus_B_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_bus_B_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_bus_B_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_bus_B_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_bus_B_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_bus_B_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bus_B_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bus_B_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_bus_B_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_bus_B_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bus_B_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bus_B_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bus_B_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_bus_B_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_bus_B_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_bus_B_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_bus_B_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_bus_res_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_res_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_res_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_res_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_res_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_bus_res_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_res_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_res_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_res_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_res_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_res_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_res_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_res_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_res_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_res_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_res_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_res_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_res_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_res_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_bus_res_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_res_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_bus_res_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_res_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_res_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_bus_res_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_bus_res_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_bus_res_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_bus_res_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_res_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_res_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_bus_res_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_res_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_bus_res_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_bus_res_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_bus_res_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_bus_res_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_bus_res_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_bus_res_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_bus_res_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"test_scalaire","role":"start","value":"0","valid_bit":"0"},{"name":"test_scalaire","role":"continue","value":"0","valid_bit":"4"},{"name":"test_scalaire","role":"auto_start","value":"0","valid_bit":"7"},{"name":"A","role":"data","value":"16"},{"name":"B","role":"data","value":"24"},{"name":"res","role":"data","value":"32"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"test_scalaire","role":"start","value":"0","valid_bit":"0"},{"name":"test_scalaire","role":"done","value":"0","valid_bit":"1"},{"name":"test_scalaire","role":"idle","value":"0","valid_bit":"2"},{"name":"test_scalaire","role":"ready","value":"0","valid_bit":"3"},{"name":"test_scalaire","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_bus_A_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bus_A_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bus_A_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_A", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bus_A_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_A", "role": "AWID" }} , 
 	{ "name": "m_axi_bus_A_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bus_A", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_bus_A_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bus_A", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_bus_B_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bus_B_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bus_B_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_B", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bus_B_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_B", "role": "AWID" }} , 
 	{ "name": "m_axi_bus_B_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bus_B", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_bus_B_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bus_B", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_bus_res_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWVALID" }} , 
 	{ "name": "m_axi_bus_res_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWREADY" }} , 
 	{ "name": "m_axi_bus_res_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bus_res", "role": "AWADDR" }} , 
 	{ "name": "m_axi_bus_res_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "AWID" }} , 
 	{ "name": "m_axi_bus_res_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bus_res", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_bus_res_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bus_res", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_bus_res_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bus_res", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "6", "7", "8"],
		"CDFG" : "test_scalaire",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1558", "EstimateLatencyMax" : "1558",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bus_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bus_A_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_test_scalaire_Pipeline_VITIS_LOOP_14_1_fu_126", "Port" : "bus_A", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bus_B", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bus_B_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_test_scalaire_Pipeline_VITIS_LOOP_14_1_fu_126", "Port" : "bus_B", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bus_res", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "bus_res_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "bus_res_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "bus_res_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "A", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "None", "Direction" : "I"},
			{"Name" : "res", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_test_scalaire_Pipeline_VITIS_LOOP_14_1_fu_126", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "test_scalaire_Pipeline_VITIS_LOOP_14_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1543", "EstimateLatencyMax" : "1543",
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
			{"Name" : "sext_ln14_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "bus_A", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bus_A_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln14", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_14_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_scalaire_Pipeline_VITIS_LOOP_14_1_fu_126.fadd_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_scalaire_Pipeline_VITIS_LOOP_14_1_fu_126.fmul_32ns_32ns_32_4_max_dsp_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_scalaire_Pipeline_VITIS_LOOP_14_1_fu_126.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bus_A_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bus_B_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bus_res_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_scalaire {
		bus_A {Type I LastRead 1 FirstWrite -1}
		bus_B {Type I LastRead 1 FirstWrite -1}
		bus_res {Type O LastRead 11 FirstWrite 10}
		A {Type I LastRead 0 FirstWrite -1}
		B {Type I LastRead 0 FirstWrite -1}
		res {Type I LastRead 0 FirstWrite -1}}
	test_scalaire_Pipeline_VITIS_LOOP_14_1 {
		bus_B {Type I LastRead 1 FirstWrite -1}
		sext_ln14_1 {Type I LastRead 0 FirstWrite -1}
		bus_A {Type I LastRead 1 FirstWrite -1}
		sext_ln14 {Type I LastRead 0 FirstWrite -1}
		tmp1_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1558", "Max" : "1558"}
	, {"Name" : "Interval", "Min" : "1559", "Max" : "1559"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bus_A { m_axi {  { m_axi_bus_A_AWVALID VALID 1 1 }  { m_axi_bus_A_AWREADY READY 0 1 }  { m_axi_bus_A_AWADDR ADDR 1 32 }  { m_axi_bus_A_AWID ID 1 1 }  { m_axi_bus_A_AWLEN LEN 1 8 }  { m_axi_bus_A_AWSIZE SIZE 1 3 }  { m_axi_bus_A_AWBURST BURST 1 2 }  { m_axi_bus_A_AWLOCK LOCK 1 2 }  { m_axi_bus_A_AWCACHE CACHE 1 4 }  { m_axi_bus_A_AWPROT PROT 1 3 }  { m_axi_bus_A_AWQOS QOS 1 4 }  { m_axi_bus_A_AWREGION REGION 1 4 }  { m_axi_bus_A_AWUSER USER 1 1 }  { m_axi_bus_A_WVALID VALID 1 1 }  { m_axi_bus_A_WREADY READY 0 1 }  { m_axi_bus_A_WDATA DATA 1 32 }  { m_axi_bus_A_WSTRB STRB 1 4 }  { m_axi_bus_A_WLAST LAST 1 1 }  { m_axi_bus_A_WID ID 1 1 }  { m_axi_bus_A_WUSER USER 1 1 }  { m_axi_bus_A_ARVALID VALID 1 1 }  { m_axi_bus_A_ARREADY READY 0 1 }  { m_axi_bus_A_ARADDR ADDR 1 32 }  { m_axi_bus_A_ARID ID 1 1 }  { m_axi_bus_A_ARLEN LEN 1 8 }  { m_axi_bus_A_ARSIZE SIZE 1 3 }  { m_axi_bus_A_ARBURST BURST 1 2 }  { m_axi_bus_A_ARLOCK LOCK 1 2 }  { m_axi_bus_A_ARCACHE CACHE 1 4 }  { m_axi_bus_A_ARPROT PROT 1 3 }  { m_axi_bus_A_ARQOS QOS 1 4 }  { m_axi_bus_A_ARREGION REGION 1 4 }  { m_axi_bus_A_ARUSER USER 1 1 }  { m_axi_bus_A_RVALID VALID 0 1 }  { m_axi_bus_A_RREADY READY 1 1 }  { m_axi_bus_A_RDATA DATA 0 32 }  { m_axi_bus_A_RLAST LAST 0 1 }  { m_axi_bus_A_RID ID 0 1 }  { m_axi_bus_A_RUSER USER 0 1 }  { m_axi_bus_A_RRESP RESP 0 2 }  { m_axi_bus_A_BVALID VALID 0 1 }  { m_axi_bus_A_BREADY READY 1 1 }  { m_axi_bus_A_BRESP RESP 0 2 }  { m_axi_bus_A_BID ID 0 1 }  { m_axi_bus_A_BUSER USER 0 1 } } }
	bus_B { m_axi {  { m_axi_bus_B_AWVALID VALID 1 1 }  { m_axi_bus_B_AWREADY READY 0 1 }  { m_axi_bus_B_AWADDR ADDR 1 32 }  { m_axi_bus_B_AWID ID 1 1 }  { m_axi_bus_B_AWLEN LEN 1 8 }  { m_axi_bus_B_AWSIZE SIZE 1 3 }  { m_axi_bus_B_AWBURST BURST 1 2 }  { m_axi_bus_B_AWLOCK LOCK 1 2 }  { m_axi_bus_B_AWCACHE CACHE 1 4 }  { m_axi_bus_B_AWPROT PROT 1 3 }  { m_axi_bus_B_AWQOS QOS 1 4 }  { m_axi_bus_B_AWREGION REGION 1 4 }  { m_axi_bus_B_AWUSER USER 1 1 }  { m_axi_bus_B_WVALID VALID 1 1 }  { m_axi_bus_B_WREADY READY 0 1 }  { m_axi_bus_B_WDATA DATA 1 32 }  { m_axi_bus_B_WSTRB STRB 1 4 }  { m_axi_bus_B_WLAST LAST 1 1 }  { m_axi_bus_B_WID ID 1 1 }  { m_axi_bus_B_WUSER USER 1 1 }  { m_axi_bus_B_ARVALID VALID 1 1 }  { m_axi_bus_B_ARREADY READY 0 1 }  { m_axi_bus_B_ARADDR ADDR 1 32 }  { m_axi_bus_B_ARID ID 1 1 }  { m_axi_bus_B_ARLEN LEN 1 8 }  { m_axi_bus_B_ARSIZE SIZE 1 3 }  { m_axi_bus_B_ARBURST BURST 1 2 }  { m_axi_bus_B_ARLOCK LOCK 1 2 }  { m_axi_bus_B_ARCACHE CACHE 1 4 }  { m_axi_bus_B_ARPROT PROT 1 3 }  { m_axi_bus_B_ARQOS QOS 1 4 }  { m_axi_bus_B_ARREGION REGION 1 4 }  { m_axi_bus_B_ARUSER USER 1 1 }  { m_axi_bus_B_RVALID VALID 0 1 }  { m_axi_bus_B_RREADY READY 1 1 }  { m_axi_bus_B_RDATA DATA 0 32 }  { m_axi_bus_B_RLAST LAST 0 1 }  { m_axi_bus_B_RID ID 0 1 }  { m_axi_bus_B_RUSER USER 0 1 }  { m_axi_bus_B_RRESP RESP 0 2 }  { m_axi_bus_B_BVALID VALID 0 1 }  { m_axi_bus_B_BREADY READY 1 1 }  { m_axi_bus_B_BRESP RESP 0 2 }  { m_axi_bus_B_BID ID 0 1 }  { m_axi_bus_B_BUSER USER 0 1 } } }
	bus_res { m_axi {  { m_axi_bus_res_AWVALID VALID 1 1 }  { m_axi_bus_res_AWREADY READY 0 1 }  { m_axi_bus_res_AWADDR ADDR 1 32 }  { m_axi_bus_res_AWID ID 1 1 }  { m_axi_bus_res_AWLEN LEN 1 8 }  { m_axi_bus_res_AWSIZE SIZE 1 3 }  { m_axi_bus_res_AWBURST BURST 1 2 }  { m_axi_bus_res_AWLOCK LOCK 1 2 }  { m_axi_bus_res_AWCACHE CACHE 1 4 }  { m_axi_bus_res_AWPROT PROT 1 3 }  { m_axi_bus_res_AWQOS QOS 1 4 }  { m_axi_bus_res_AWREGION REGION 1 4 }  { m_axi_bus_res_AWUSER USER 1 1 }  { m_axi_bus_res_WVALID VALID 1 1 }  { m_axi_bus_res_WREADY READY 0 1 }  { m_axi_bus_res_WDATA DATA 1 32 }  { m_axi_bus_res_WSTRB STRB 1 4 }  { m_axi_bus_res_WLAST LAST 1 1 }  { m_axi_bus_res_WID ID 1 1 }  { m_axi_bus_res_WUSER USER 1 1 }  { m_axi_bus_res_ARVALID VALID 1 1 }  { m_axi_bus_res_ARREADY READY 0 1 }  { m_axi_bus_res_ARADDR ADDR 1 32 }  { m_axi_bus_res_ARID ID 1 1 }  { m_axi_bus_res_ARLEN LEN 1 8 }  { m_axi_bus_res_ARSIZE SIZE 1 3 }  { m_axi_bus_res_ARBURST BURST 1 2 }  { m_axi_bus_res_ARLOCK LOCK 1 2 }  { m_axi_bus_res_ARCACHE CACHE 1 4 }  { m_axi_bus_res_ARPROT PROT 1 3 }  { m_axi_bus_res_ARQOS QOS 1 4 }  { m_axi_bus_res_ARREGION REGION 1 4 }  { m_axi_bus_res_ARUSER USER 1 1 }  { m_axi_bus_res_RVALID VALID 0 1 }  { m_axi_bus_res_RREADY READY 1 1 }  { m_axi_bus_res_RDATA DATA 0 32 }  { m_axi_bus_res_RLAST LAST 0 1 }  { m_axi_bus_res_RID ID 0 1 }  { m_axi_bus_res_RUSER USER 0 1 }  { m_axi_bus_res_RRESP RESP 0 2 }  { m_axi_bus_res_BVALID VALID 0 1 }  { m_axi_bus_res_BREADY READY 1 1 }  { m_axi_bus_res_BRESP RESP 0 2 }  { m_axi_bus_res_BID ID 0 1 }  { m_axi_bus_res_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ bus_A { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ bus_B { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ bus_res { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ bus_A 1 }
	{ bus_B 1 }
	{ bus_res 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ bus_A 1 }
	{ bus_B 1 }
	{ bus_res 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
