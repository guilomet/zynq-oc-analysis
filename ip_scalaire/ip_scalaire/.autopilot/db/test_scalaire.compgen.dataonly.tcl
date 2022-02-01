# This script segment is generated automatically by AutoPilot

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


