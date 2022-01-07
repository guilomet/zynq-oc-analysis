vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_10
vlib riviera/processing_system7_vip_v1_0_12
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_24
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_23
vlib riviera/axi_crossbar_v2_1_25
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_bram_ctrl_v4_1_5
vlib riviera/xlconstant_v1_1_7
vlib riviera/smartconnect_v1_0
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_17
vlib riviera/floating_point_v7_1_12
vlib riviera/axi_protocol_converter_v2_1_24
vlib riviera/axi_clock_converter_v2_1_23

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 riviera/axi_vip_v1_1_10
vmap processing_system7_vip_v1_0_12 riviera/processing_system7_vip_v1_0_12
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_24 riviera/axi_register_slice_v2_1_24
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 riviera/axi_data_fifo_v2_1_23
vmap axi_crossbar_v2_1_25 riviera/axi_crossbar_v2_1_25
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_bram_ctrl_v4_1_5 riviera/axi_bram_ctrl_v4_1_5
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 riviera/mult_gen_v12_0_17
vmap floating_point_v7_1_12 riviera/floating_point_v7_1_12
vmap axi_protocol_converter_v2_1_24 riviera/axi_protocol_converter_v2_1_24
vmap axi_clock_converter_v2_1_23 riviera/axi_clock_converter_v2_1_23

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_12  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0_1/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0_1/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_mmcm_pll_drp.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_family_support.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_family.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_soft_reset.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/proc_common_v3_00_a/hdl/src/vhdl/design_1_clk_wiz_0_0_pselect_f.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_clk_wiz_0_0_address_decoder.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_clk_wiz_0_0_slave_attachment.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/design_1_clk_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz_drp.vhd" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_axi_clk_config.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_25  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0_1/sim/design_1_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_2/sim/design_1_blk_mem_gen_0_2.v" \

vcom -work axi_bram_ctrl_v4_1_5 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/33c1/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_2/sim/design_1_axi_bram_ctrl_0_2.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_3/sim/design_1_axi_bram_ctrl_0_3.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_4/sim/design_1_axi_bram_ctrl_0_4.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_5/sim/design_1_axi_bram_ctrl_0_5.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a878_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a878_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a878_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a878_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a878_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a878_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a878_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a878_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a878_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_11/sim/bd_a878_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_12/sim/bd_a878_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/sim/bd_a888.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_0/sim/bd_a888_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_1/sim/bd_a888_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_2/sim/bd_a888_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_3/sim/bd_a888_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_4/sim/bd_a888_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_5/sim/bd_a888_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_6/sim/bd_a888_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_7/sim/bd_a888_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_8/sim/bd_a888_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_9/sim/bd_a888_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_10/sim/bd_a888_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_11/sim/bd_a888_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/bd_0/ip/ip_12/sim/bd_a888_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_0/sim/design_1_axi_smc_2_0.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/b417/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_12 -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/bf60/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_12  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/bf60/hdl/floating_point_v7_1_rfs.v" \

vcom -work xil_defaultlib -93 \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_bus_A_m_axi.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_bus_B_m_axi.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_bus_res_m_axi.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_control_s_axi.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_fadd_32ns_32ns_32_5_full_dsp_1.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_flow_control_loop_pipe_sequential_init.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_fmul_32ns_32ns_32_4_max_dsp_1.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_14_1.vhd" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/vhdl/test_scalaire.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/ip/test_scalaire_fadd_32ns_32ns_32_5_full_dsp_1_ip.v" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/a92a/hdl/ip/test_scalaire_fmul_32ns_32ns_32_4_max_dsp_1_ip.v" \
"../../../bd/design_1/ip/design_1_test_scalaire_0_1/sim/design_1_test_scalaire_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_comp_32_0_0/sim/design_1_comp_32_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_24  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0_1/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_23  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/f42d/hdl" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/6dcf" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/80cc/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ipshared/22b9/hdl/verilog" "+incdir+../../../../mk1_implement.gen/sources_1/bd/design_1/ip/design_1_test_scalaire_0_1/drivers/test_scalaire_v1_1/src" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_cc_0/sim/design_1_auto_cc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1_1/sim/design_1_auto_pc_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

