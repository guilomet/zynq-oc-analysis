set_property SRC_FILE_INFO {cfile:F:/projet_m2/git/zynq-oc-analysis/mk1/mk1_implement/mk1_implement.srcs/constrs_1/imports/xilinx_board_store/zybo_z7.xdc rfile:../../../mk1_implement.srcs/constrs_1/imports/xilinx_board_store/zybo_z7.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
create_clock -name sys_clk -period 5s.000 [get_ports sys_clk]
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led_0 }]; #IO_L23P_T3_35 Sch=led[0]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led_1 }]; #IO_L23N_T3_35 Sch=led[1]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led_2 }]; #IO_0_35 Sch=led[2]
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { led_3 }]; #IO_L3N_T0_DQS_AD1N_35 Sch=led[3]
