############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mk1
set_top test_scalaire
add_files mk1/test4.c
open_solution "solution1" -flow_target vivado
set_part {xc7z010-clg400-1}
create_clock -period 5 -name default
config_compile -name_max_length 120 -unsafe_math_optimizations
config_export -display_name test_scalaire -ipname test_scalaire -rtl vhdl -version 2.0 -vivado_clock 5
config_interface -m_axi_addr64=0
config_unroll -tripcount_threshold 2
source "./mk1/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -version "1.1" -display_name "test_scalaire"
