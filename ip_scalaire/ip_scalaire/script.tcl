############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ip_scalaire
set_top test_scalaire
add_files ip_scalaire/ip_scal.cpp
open_solution "ip_scalaire" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 5 -name default
config_compile -unsafe_math_optimizations
config_dataflow -strict_mode off
config_export -display_name ip_scal -format ip_catalog -rtl verilog -version 1.1
config_interface -m_axi_addr64=0 -register_io scalar_in
source "./ip_scalaire/ip_scalaire/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -version "1.1" -display_name "ip_scal"
