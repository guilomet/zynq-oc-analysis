# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 12 \
    name tmp1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename tmp1 \
    op interface \
    ports { tmp1_address0 { O 4 vector } tmp1_ce0 { O 1 bit } tmp1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name bus_res \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bus_res \
    op interface \
    ports { m_axi_bus_res_AWVALID { O 1 bit } m_axi_bus_res_AWREADY { I 1 bit } m_axi_bus_res_AWADDR { O 32 vector } m_axi_bus_res_AWID { O 1 vector } m_axi_bus_res_AWLEN { O 32 vector } m_axi_bus_res_AWSIZE { O 3 vector } m_axi_bus_res_AWBURST { O 2 vector } m_axi_bus_res_AWLOCK { O 2 vector } m_axi_bus_res_AWCACHE { O 4 vector } m_axi_bus_res_AWPROT { O 3 vector } m_axi_bus_res_AWQOS { O 4 vector } m_axi_bus_res_AWREGION { O 4 vector } m_axi_bus_res_AWUSER { O 1 vector } m_axi_bus_res_WVALID { O 1 bit } m_axi_bus_res_WREADY { I 1 bit } m_axi_bus_res_WDATA { O 32 vector } m_axi_bus_res_WSTRB { O 4 vector } m_axi_bus_res_WLAST { O 1 bit } m_axi_bus_res_WID { O 1 vector } m_axi_bus_res_WUSER { O 1 vector } m_axi_bus_res_ARVALID { O 1 bit } m_axi_bus_res_ARREADY { I 1 bit } m_axi_bus_res_ARADDR { O 32 vector } m_axi_bus_res_ARID { O 1 vector } m_axi_bus_res_ARLEN { O 32 vector } m_axi_bus_res_ARSIZE { O 3 vector } m_axi_bus_res_ARBURST { O 2 vector } m_axi_bus_res_ARLOCK { O 2 vector } m_axi_bus_res_ARCACHE { O 4 vector } m_axi_bus_res_ARPROT { O 3 vector } m_axi_bus_res_ARQOS { O 4 vector } m_axi_bus_res_ARREGION { O 4 vector } m_axi_bus_res_ARUSER { O 1 vector } m_axi_bus_res_RVALID { I 1 bit } m_axi_bus_res_RREADY { O 1 bit } m_axi_bus_res_RDATA { I 32 vector } m_axi_bus_res_RLAST { I 1 bit } m_axi_bus_res_RID { I 1 vector } m_axi_bus_res_RUSER { I 1 vector } m_axi_bus_res_RRESP { I 2 vector } m_axi_bus_res_BVALID { I 1 bit } m_axi_bus_res_BREADY { O 1 bit } m_axi_bus_res_BRESP { I 2 vector } m_axi_bus_res_BID { I 1 vector } m_axi_bus_res_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name sext_ln31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln31 \
    op interface \
    ports { sext_ln31 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName test_scalaire_flow_control_loop_pipe_sequential_init_U
set CompName test_scalaire_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix test_scalaire_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


