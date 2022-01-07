# This script segment is generated automatically by AutoPilot

set name test_scalaire_fadd_32ns_32ns_32_5_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 4 ALLOW_PRAGMA 1
}


set name test_scalaire_fmul_32ns_32ns_32_4_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 3 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name bus_B \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bus_B \
    op interface \
    ports { m_axi_bus_B_AWVALID { O 1 bit } m_axi_bus_B_AWREADY { I 1 bit } m_axi_bus_B_AWADDR { O 32 vector } m_axi_bus_B_AWID { O 1 vector } m_axi_bus_B_AWLEN { O 32 vector } m_axi_bus_B_AWSIZE { O 3 vector } m_axi_bus_B_AWBURST { O 2 vector } m_axi_bus_B_AWLOCK { O 2 vector } m_axi_bus_B_AWCACHE { O 4 vector } m_axi_bus_B_AWPROT { O 3 vector } m_axi_bus_B_AWQOS { O 4 vector } m_axi_bus_B_AWREGION { O 4 vector } m_axi_bus_B_AWUSER { O 1 vector } m_axi_bus_B_WVALID { O 1 bit } m_axi_bus_B_WREADY { I 1 bit } m_axi_bus_B_WDATA { O 32 vector } m_axi_bus_B_WSTRB { O 4 vector } m_axi_bus_B_WLAST { O 1 bit } m_axi_bus_B_WID { O 1 vector } m_axi_bus_B_WUSER { O 1 vector } m_axi_bus_B_ARVALID { O 1 bit } m_axi_bus_B_ARREADY { I 1 bit } m_axi_bus_B_ARADDR { O 32 vector } m_axi_bus_B_ARID { O 1 vector } m_axi_bus_B_ARLEN { O 32 vector } m_axi_bus_B_ARSIZE { O 3 vector } m_axi_bus_B_ARBURST { O 2 vector } m_axi_bus_B_ARLOCK { O 2 vector } m_axi_bus_B_ARCACHE { O 4 vector } m_axi_bus_B_ARPROT { O 3 vector } m_axi_bus_B_ARQOS { O 4 vector } m_axi_bus_B_ARREGION { O 4 vector } m_axi_bus_B_ARUSER { O 1 vector } m_axi_bus_B_RVALID { I 1 bit } m_axi_bus_B_RREADY { O 1 bit } m_axi_bus_B_RDATA { I 32 vector } m_axi_bus_B_RLAST { I 1 bit } m_axi_bus_B_RID { I 1 vector } m_axi_bus_B_RUSER { I 1 vector } m_axi_bus_B_RRESP { I 2 vector } m_axi_bus_B_BVALID { I 1 bit } m_axi_bus_B_BREADY { O 1 bit } m_axi_bus_B_BRESP { I 2 vector } m_axi_bus_B_BID { I 1 vector } m_axi_bus_B_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name sext_ln14_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln14_1 \
    op interface \
    ports { sext_ln14_1 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name bus_A \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bus_A \
    op interface \
    ports { m_axi_bus_A_AWVALID { O 1 bit } m_axi_bus_A_AWREADY { I 1 bit } m_axi_bus_A_AWADDR { O 32 vector } m_axi_bus_A_AWID { O 1 vector } m_axi_bus_A_AWLEN { O 32 vector } m_axi_bus_A_AWSIZE { O 3 vector } m_axi_bus_A_AWBURST { O 2 vector } m_axi_bus_A_AWLOCK { O 2 vector } m_axi_bus_A_AWCACHE { O 4 vector } m_axi_bus_A_AWPROT { O 3 vector } m_axi_bus_A_AWQOS { O 4 vector } m_axi_bus_A_AWREGION { O 4 vector } m_axi_bus_A_AWUSER { O 1 vector } m_axi_bus_A_WVALID { O 1 bit } m_axi_bus_A_WREADY { I 1 bit } m_axi_bus_A_WDATA { O 32 vector } m_axi_bus_A_WSTRB { O 4 vector } m_axi_bus_A_WLAST { O 1 bit } m_axi_bus_A_WID { O 1 vector } m_axi_bus_A_WUSER { O 1 vector } m_axi_bus_A_ARVALID { O 1 bit } m_axi_bus_A_ARREADY { I 1 bit } m_axi_bus_A_ARADDR { O 32 vector } m_axi_bus_A_ARID { O 1 vector } m_axi_bus_A_ARLEN { O 32 vector } m_axi_bus_A_ARSIZE { O 3 vector } m_axi_bus_A_ARBURST { O 2 vector } m_axi_bus_A_ARLOCK { O 2 vector } m_axi_bus_A_ARCACHE { O 4 vector } m_axi_bus_A_ARPROT { O 3 vector } m_axi_bus_A_ARQOS { O 4 vector } m_axi_bus_A_ARREGION { O 4 vector } m_axi_bus_A_ARUSER { O 1 vector } m_axi_bus_A_RVALID { I 1 bit } m_axi_bus_A_RREADY { O 1 bit } m_axi_bus_A_RDATA { I 32 vector } m_axi_bus_A_RLAST { I 1 bit } m_axi_bus_A_RID { I 1 vector } m_axi_bus_A_RUSER { I 1 vector } m_axi_bus_A_RRESP { I 2 vector } m_axi_bus_A_BVALID { I 1 bit } m_axi_bus_A_BREADY { O 1 bit } m_axi_bus_A_BRESP { I 2 vector } m_axi_bus_A_BID { I 1 vector } m_axi_bus_A_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name sext_ln14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln14 \
    op interface \
    ports { sext_ln14 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name tmp1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp1_out \
    op interface \
    ports { tmp1_out { O 32 vector } tmp1_out_ap_vld { O 1 bit } } \
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


