# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
A { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
B { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
res { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 10 \
			corename test_scalaire_control_axilite \
			name test_scalaire_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_mode default \
			is_flushable 0 \
			is_datawidth64 0 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_scalaire_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 11 \
    corename {m_axi} \
    op interface \
    delay_budget 3.65 \ 
    is_flushable 0 \ 
    mem_style block \ 
    name {test_scalaire_bus_A_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'bus_A'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_scalaire_bus_A_m_axi BINDTYPE interface TYPE interface_m_axi
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 12 \
    corename {m_axi} \
    op interface \
    delay_budget 3.65 \ 
    is_flushable 0 \ 
    mem_style block \ 
    name {test_scalaire_bus_B_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'bus_B'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_scalaire_bus_B_m_axi BINDTYPE interface TYPE interface_m_axi
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 13 \
    corename {m_axi} \
    op interface \
    delay_budget 3.65 \ 
    is_flushable 0 \ 
    mem_style block \ 
    name {test_scalaire_bus_res_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'bus_res'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler test_scalaire_bus_res_m_axi BINDTYPE interface TYPE interface_m_axi
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


