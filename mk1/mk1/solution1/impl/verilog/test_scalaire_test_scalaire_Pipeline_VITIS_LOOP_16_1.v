// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_16_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_bus_A_AWVALID,
        m_axi_bus_A_AWREADY,
        m_axi_bus_A_AWADDR,
        m_axi_bus_A_AWID,
        m_axi_bus_A_AWLEN,
        m_axi_bus_A_AWSIZE,
        m_axi_bus_A_AWBURST,
        m_axi_bus_A_AWLOCK,
        m_axi_bus_A_AWCACHE,
        m_axi_bus_A_AWPROT,
        m_axi_bus_A_AWQOS,
        m_axi_bus_A_AWREGION,
        m_axi_bus_A_AWUSER,
        m_axi_bus_A_WVALID,
        m_axi_bus_A_WREADY,
        m_axi_bus_A_WDATA,
        m_axi_bus_A_WSTRB,
        m_axi_bus_A_WLAST,
        m_axi_bus_A_WID,
        m_axi_bus_A_WUSER,
        m_axi_bus_A_ARVALID,
        m_axi_bus_A_ARREADY,
        m_axi_bus_A_ARADDR,
        m_axi_bus_A_ARID,
        m_axi_bus_A_ARLEN,
        m_axi_bus_A_ARSIZE,
        m_axi_bus_A_ARBURST,
        m_axi_bus_A_ARLOCK,
        m_axi_bus_A_ARCACHE,
        m_axi_bus_A_ARPROT,
        m_axi_bus_A_ARQOS,
        m_axi_bus_A_ARREGION,
        m_axi_bus_A_ARUSER,
        m_axi_bus_A_RVALID,
        m_axi_bus_A_RREADY,
        m_axi_bus_A_RDATA,
        m_axi_bus_A_RLAST,
        m_axi_bus_A_RID,
        m_axi_bus_A_RUSER,
        m_axi_bus_A_RRESP,
        m_axi_bus_A_BVALID,
        m_axi_bus_A_BREADY,
        m_axi_bus_A_BRESP,
        m_axi_bus_A_BID,
        m_axi_bus_A_BUSER,
        m_axi_bus_B_AWVALID,
        m_axi_bus_B_AWREADY,
        m_axi_bus_B_AWADDR,
        m_axi_bus_B_AWID,
        m_axi_bus_B_AWLEN,
        m_axi_bus_B_AWSIZE,
        m_axi_bus_B_AWBURST,
        m_axi_bus_B_AWLOCK,
        m_axi_bus_B_AWCACHE,
        m_axi_bus_B_AWPROT,
        m_axi_bus_B_AWQOS,
        m_axi_bus_B_AWREGION,
        m_axi_bus_B_AWUSER,
        m_axi_bus_B_WVALID,
        m_axi_bus_B_WREADY,
        m_axi_bus_B_WDATA,
        m_axi_bus_B_WSTRB,
        m_axi_bus_B_WLAST,
        m_axi_bus_B_WID,
        m_axi_bus_B_WUSER,
        m_axi_bus_B_ARVALID,
        m_axi_bus_B_ARREADY,
        m_axi_bus_B_ARADDR,
        m_axi_bus_B_ARID,
        m_axi_bus_B_ARLEN,
        m_axi_bus_B_ARSIZE,
        m_axi_bus_B_ARBURST,
        m_axi_bus_B_ARLOCK,
        m_axi_bus_B_ARCACHE,
        m_axi_bus_B_ARPROT,
        m_axi_bus_B_ARQOS,
        m_axi_bus_B_ARREGION,
        m_axi_bus_B_ARUSER,
        m_axi_bus_B_RVALID,
        m_axi_bus_B_RREADY,
        m_axi_bus_B_RDATA,
        m_axi_bus_B_RLAST,
        m_axi_bus_B_RID,
        m_axi_bus_B_RUSER,
        m_axi_bus_B_RRESP,
        m_axi_bus_B_BVALID,
        m_axi_bus_B_BREADY,
        m_axi_bus_B_BRESP,
        m_axi_bus_B_BID,
        m_axi_bus_B_BUSER,
        sext_ln16_1,
        sext_ln16,
        tmp_t1_address0,
        tmp_t1_ce0,
        tmp_t1_we0,
        tmp_t1_d0,
        tmp_t2_address0,
        tmp_t2_ce0,
        tmp_t2_we0,
        tmp_t2_d0,
        tmp_t3_address0,
        tmp_t3_ce0,
        tmp_t3_we0,
        tmp_t3_d0,
        tmp_t4_address0,
        tmp_t4_ce0,
        tmp_t4_we0,
        tmp_t4_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_bus_A_AWVALID;
input   m_axi_bus_A_AWREADY;
output  [31:0] m_axi_bus_A_AWADDR;
output  [0:0] m_axi_bus_A_AWID;
output  [31:0] m_axi_bus_A_AWLEN;
output  [2:0] m_axi_bus_A_AWSIZE;
output  [1:0] m_axi_bus_A_AWBURST;
output  [1:0] m_axi_bus_A_AWLOCK;
output  [3:0] m_axi_bus_A_AWCACHE;
output  [2:0] m_axi_bus_A_AWPROT;
output  [3:0] m_axi_bus_A_AWQOS;
output  [3:0] m_axi_bus_A_AWREGION;
output  [0:0] m_axi_bus_A_AWUSER;
output   m_axi_bus_A_WVALID;
input   m_axi_bus_A_WREADY;
output  [31:0] m_axi_bus_A_WDATA;
output  [3:0] m_axi_bus_A_WSTRB;
output   m_axi_bus_A_WLAST;
output  [0:0] m_axi_bus_A_WID;
output  [0:0] m_axi_bus_A_WUSER;
output   m_axi_bus_A_ARVALID;
input   m_axi_bus_A_ARREADY;
output  [31:0] m_axi_bus_A_ARADDR;
output  [0:0] m_axi_bus_A_ARID;
output  [31:0] m_axi_bus_A_ARLEN;
output  [2:0] m_axi_bus_A_ARSIZE;
output  [1:0] m_axi_bus_A_ARBURST;
output  [1:0] m_axi_bus_A_ARLOCK;
output  [3:0] m_axi_bus_A_ARCACHE;
output  [2:0] m_axi_bus_A_ARPROT;
output  [3:0] m_axi_bus_A_ARQOS;
output  [3:0] m_axi_bus_A_ARREGION;
output  [0:0] m_axi_bus_A_ARUSER;
input   m_axi_bus_A_RVALID;
output   m_axi_bus_A_RREADY;
input  [31:0] m_axi_bus_A_RDATA;
input   m_axi_bus_A_RLAST;
input  [0:0] m_axi_bus_A_RID;
input  [0:0] m_axi_bus_A_RUSER;
input  [1:0] m_axi_bus_A_RRESP;
input   m_axi_bus_A_BVALID;
output   m_axi_bus_A_BREADY;
input  [1:0] m_axi_bus_A_BRESP;
input  [0:0] m_axi_bus_A_BID;
input  [0:0] m_axi_bus_A_BUSER;
output   m_axi_bus_B_AWVALID;
input   m_axi_bus_B_AWREADY;
output  [31:0] m_axi_bus_B_AWADDR;
output  [0:0] m_axi_bus_B_AWID;
output  [31:0] m_axi_bus_B_AWLEN;
output  [2:0] m_axi_bus_B_AWSIZE;
output  [1:0] m_axi_bus_B_AWBURST;
output  [1:0] m_axi_bus_B_AWLOCK;
output  [3:0] m_axi_bus_B_AWCACHE;
output  [2:0] m_axi_bus_B_AWPROT;
output  [3:0] m_axi_bus_B_AWQOS;
output  [3:0] m_axi_bus_B_AWREGION;
output  [0:0] m_axi_bus_B_AWUSER;
output   m_axi_bus_B_WVALID;
input   m_axi_bus_B_WREADY;
output  [31:0] m_axi_bus_B_WDATA;
output  [3:0] m_axi_bus_B_WSTRB;
output   m_axi_bus_B_WLAST;
output  [0:0] m_axi_bus_B_WID;
output  [0:0] m_axi_bus_B_WUSER;
output   m_axi_bus_B_ARVALID;
input   m_axi_bus_B_ARREADY;
output  [31:0] m_axi_bus_B_ARADDR;
output  [0:0] m_axi_bus_B_ARID;
output  [31:0] m_axi_bus_B_ARLEN;
output  [2:0] m_axi_bus_B_ARSIZE;
output  [1:0] m_axi_bus_B_ARBURST;
output  [1:0] m_axi_bus_B_ARLOCK;
output  [3:0] m_axi_bus_B_ARCACHE;
output  [2:0] m_axi_bus_B_ARPROT;
output  [3:0] m_axi_bus_B_ARQOS;
output  [3:0] m_axi_bus_B_ARREGION;
output  [0:0] m_axi_bus_B_ARUSER;
input   m_axi_bus_B_RVALID;
output   m_axi_bus_B_RREADY;
input  [31:0] m_axi_bus_B_RDATA;
input   m_axi_bus_B_RLAST;
input  [0:0] m_axi_bus_B_RID;
input  [0:0] m_axi_bus_B_RUSER;
input  [1:0] m_axi_bus_B_RRESP;
input   m_axi_bus_B_BVALID;
output   m_axi_bus_B_BREADY;
input  [1:0] m_axi_bus_B_BRESP;
input  [0:0] m_axi_bus_B_BID;
input  [0:0] m_axi_bus_B_BUSER;
input  [29:0] sext_ln16_1;
input  [29:0] sext_ln16;
output  [5:0] tmp_t1_address0;
output   tmp_t1_ce0;
output   tmp_t1_we0;
output  [31:0] tmp_t1_d0;
output  [5:0] tmp_t2_address0;
output   tmp_t2_ce0;
output   tmp_t2_we0;
output  [31:0] tmp_t2_d0;
output  [5:0] tmp_t3_address0;
output   tmp_t3_ce0;
output   tmp_t3_we0;
output  [31:0] tmp_t3_d0;
output  [5:0] tmp_t4_address0;
output   tmp_t4_ce0;
output   tmp_t4_we0;
output  [31:0] tmp_t4_d0;

reg ap_idle;
reg m_axi_bus_A_RREADY;
reg m_axi_bus_B_RREADY;
reg tmp_t1_ce0;
reg tmp_t1_we0;
reg tmp_t2_ce0;
reg tmp_t2_we0;
reg tmp_t3_ce0;
reg tmp_t3_we0;
reg tmp_t4_ce0;
reg tmp_t4_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
reg   [0:0] icmp_ln1057_reg_265;
reg    ap_block_state4_pp0_stage3_iter0;
wire    ap_block_state8_pp0_stage3_iter1;
wire    ap_block_state12_pp0_stage3_iter2;
reg    ap_block_pp0_stage3_subdone;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    bus_B_blk_n_R;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg    bus_A_blk_n_R;
reg   [31:0] reg_138;
reg    ap_block_state2_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_state10_pp0_stage1_iter2;
wire    ap_block_state14_pp0_stage1_iter3;
reg    ap_block_pp0_stage1_11001;
reg    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state7_pp0_stage2_iter1;
wire    ap_block_state11_pp0_stage2_iter2;
reg    ap_block_pp0_stage2_11001;
reg    ap_block_pp0_stage3_11001;
wire    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state9_pp0_stage0_iter2;
wire    ap_block_state13_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] reg_142;
wire   [31:0] grp_fu_134_p2;
reg   [31:0] reg_146;
reg   [5:0] i_V_1_reg_259;
reg   [5:0] i_V_1_reg_259_pp0_iter1_reg;
reg   [5:0] i_V_1_reg_259_pp0_iter2_reg;
wire   [0:0] icmp_ln1057_fu_170_p2;
reg   [0:0] icmp_ln1057_reg_265_pp0_iter1_reg;
reg   [0:0] icmp_ln1057_reg_265_pp0_iter2_reg;
wire   [31:0] bitcast_ln21_fu_198_p1;
wire   [31:0] bitcast_ln21_4_fu_203_p1;
wire   [31:0] bitcast_ln21_1_fu_208_p1;
wire   [31:0] bitcast_ln21_5_fu_213_p1;
wire   [31:0] bitcast_ln21_2_fu_218_p1;
wire   [31:0] bitcast_ln21_6_fu_223_p1;
wire   [31:0] bitcast_ln21_3_fu_228_p1;
wire   [31:0] bitcast_ln21_7_fu_233_p1;
wire   [31:0] zext_ln21_fu_238_p1;
reg   [31:0] zext_ln21_reg_319;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_block_pp0_stage1_subdone;
reg   [5:0] i_V_fu_56;
wire   [5:0] add_ln870_fu_188_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_i_V_1;
reg   [31:0] grp_fu_134_p0;
reg   [31:0] grp_fu_134_p1;
reg    grp_fu_134_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
reg    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end

test_scalaire_fmul_32ns_32ns_32_8_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_8_max_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_134_p0),
    .din1(grp_fu_134_p1),
    .ce(grp_fu_134_ce),
    .dout(grp_fu_134_p2)
);

test_scalaire_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_V_fu_56 <= 6'd0;
    end else if (((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        i_V_fu_56 <= add_ln870_fu_188_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_V_1_reg_259 <= ap_sig_allocacmp_i_V_1;
        i_V_1_reg_259_pp0_iter1_reg <= i_V_1_reg_259;
        i_V_1_reg_259_pp0_iter2_reg <= i_V_1_reg_259_pp0_iter1_reg;
        icmp_ln1057_reg_265 <= icmp_ln1057_fu_170_p2;
        icmp_ln1057_reg_265_pp0_iter1_reg <= icmp_ln1057_reg_265;
        icmp_ln1057_reg_265_pp0_iter2_reg <= icmp_ln1057_reg_265_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        reg_138 <= m_axi_bus_A_RDATA;
        reg_142 <= m_axi_bus_B_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        reg_146 <= grp_fu_134_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        zext_ln21_reg_319[5 : 0] <= zext_ln21_fu_238_p1[5 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln1057_reg_265 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1057_reg_265_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_V_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_i_V_1 = i_V_fu_56;
    end
end

always @ (*) begin
    if ((((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        bus_A_blk_n_R = m_axi_bus_A_RVALID;
    end else begin
        bus_A_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        bus_B_blk_n_R = m_axi_bus_B_RVALID;
    end else begin
        bus_B_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        grp_fu_134_ce = 1'b1;
    end else begin
        grp_fu_134_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_134_p0 = bitcast_ln21_3_fu_228_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_134_p0 = bitcast_ln21_2_fu_218_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_134_p0 = bitcast_ln21_1_fu_208_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_134_p0 = bitcast_ln21_fu_198_p1;
    end else begin
        grp_fu_134_p0 = 'bx;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_134_p1 = bitcast_ln21_7_fu_233_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_134_p1 = bitcast_ln21_6_fu_223_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_134_p1 = bitcast_ln21_5_fu_213_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_134_p1 = bitcast_ln21_4_fu_203_p1;
    end else begin
        grp_fu_134_p1 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axi_bus_A_RREADY = 1'b1;
    end else begin
        m_axi_bus_A_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((icmp_ln1057_reg_265 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        m_axi_bus_B_RREADY = 1'b1;
    end else begin
        m_axi_bus_B_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        tmp_t1_ce0 = 1'b1;
    end else begin
        tmp_t1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        tmp_t1_we0 = 1'b1;
    end else begin
        tmp_t1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        tmp_t2_ce0 = 1'b1;
    end else begin
        tmp_t2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        tmp_t2_we0 = 1'b1;
    end else begin
        tmp_t2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_t3_ce0 = 1'b1;
    end else begin
        tmp_t3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_t3_we0 = 1'b1;
    end else begin
        tmp_t3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_t4_ce0 = 1'b1;
    end else begin
        tmp_t4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_t4_we0 = 1'b1;
    end else begin
        tmp_t4_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln870_fu_188_p2 = (i_V_1_reg_259 + 6'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((m_axi_bus_A_RVALID == 1'b0) | (m_axi_bus_B_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((m_axi_bus_A_RVALID == 1'b0) | (m_axi_bus_B_RVALID == 1'b0)));
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0))));
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage2_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0))));
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_11001 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage3_subdone = ((ap_enable_reg_pp0_iter0 == 1'b1) & (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0))));
end

assign ap_block_state10_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage2_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage3_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage1_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state3_pp0_stage2_iter0 = (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state4_pp0_stage3_iter0 = (((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_A_RVALID == 1'b0)) | ((icmp_ln1057_reg_265 == 1'd0) & (m_axi_bus_B_RVALID == 1'b0)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter1 = ((m_axi_bus_A_RVALID == 1'b0) | (m_axi_bus_B_RVALID == 1'b0));
end

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage2_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage3_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;

assign bitcast_ln21_1_fu_208_p1 = reg_138;

assign bitcast_ln21_2_fu_218_p1 = reg_138;

assign bitcast_ln21_3_fu_228_p1 = reg_138;

assign bitcast_ln21_4_fu_203_p1 = reg_142;

assign bitcast_ln21_5_fu_213_p1 = reg_142;

assign bitcast_ln21_6_fu_223_p1 = reg_142;

assign bitcast_ln21_7_fu_233_p1 = reg_142;

assign bitcast_ln21_fu_198_p1 = reg_138;

assign icmp_ln1057_fu_170_p2 = ((ap_sig_allocacmp_i_V_1 == 6'd63) ? 1'b1 : 1'b0);

assign m_axi_bus_A_ARADDR = 32'd0;

assign m_axi_bus_A_ARBURST = 2'd0;

assign m_axi_bus_A_ARCACHE = 4'd0;

assign m_axi_bus_A_ARID = 1'd0;

assign m_axi_bus_A_ARLEN = 32'd0;

assign m_axi_bus_A_ARLOCK = 2'd0;

assign m_axi_bus_A_ARPROT = 3'd0;

assign m_axi_bus_A_ARQOS = 4'd0;

assign m_axi_bus_A_ARREGION = 4'd0;

assign m_axi_bus_A_ARSIZE = 3'd0;

assign m_axi_bus_A_ARUSER = 1'd0;

assign m_axi_bus_A_ARVALID = 1'b0;

assign m_axi_bus_A_AWADDR = 32'd0;

assign m_axi_bus_A_AWBURST = 2'd0;

assign m_axi_bus_A_AWCACHE = 4'd0;

assign m_axi_bus_A_AWID = 1'd0;

assign m_axi_bus_A_AWLEN = 32'd0;

assign m_axi_bus_A_AWLOCK = 2'd0;

assign m_axi_bus_A_AWPROT = 3'd0;

assign m_axi_bus_A_AWQOS = 4'd0;

assign m_axi_bus_A_AWREGION = 4'd0;

assign m_axi_bus_A_AWSIZE = 3'd0;

assign m_axi_bus_A_AWUSER = 1'd0;

assign m_axi_bus_A_AWVALID = 1'b0;

assign m_axi_bus_A_BREADY = 1'b0;

assign m_axi_bus_A_WDATA = 32'd0;

assign m_axi_bus_A_WID = 1'd0;

assign m_axi_bus_A_WLAST = 1'b0;

assign m_axi_bus_A_WSTRB = 4'd0;

assign m_axi_bus_A_WUSER = 1'd0;

assign m_axi_bus_A_WVALID = 1'b0;

assign m_axi_bus_B_ARADDR = 32'd0;

assign m_axi_bus_B_ARBURST = 2'd0;

assign m_axi_bus_B_ARCACHE = 4'd0;

assign m_axi_bus_B_ARID = 1'd0;

assign m_axi_bus_B_ARLEN = 32'd0;

assign m_axi_bus_B_ARLOCK = 2'd0;

assign m_axi_bus_B_ARPROT = 3'd0;

assign m_axi_bus_B_ARQOS = 4'd0;

assign m_axi_bus_B_ARREGION = 4'd0;

assign m_axi_bus_B_ARSIZE = 3'd0;

assign m_axi_bus_B_ARUSER = 1'd0;

assign m_axi_bus_B_ARVALID = 1'b0;

assign m_axi_bus_B_AWADDR = 32'd0;

assign m_axi_bus_B_AWBURST = 2'd0;

assign m_axi_bus_B_AWCACHE = 4'd0;

assign m_axi_bus_B_AWID = 1'd0;

assign m_axi_bus_B_AWLEN = 32'd0;

assign m_axi_bus_B_AWLOCK = 2'd0;

assign m_axi_bus_B_AWPROT = 3'd0;

assign m_axi_bus_B_AWQOS = 4'd0;

assign m_axi_bus_B_AWREGION = 4'd0;

assign m_axi_bus_B_AWSIZE = 3'd0;

assign m_axi_bus_B_AWUSER = 1'd0;

assign m_axi_bus_B_AWVALID = 1'b0;

assign m_axi_bus_B_BREADY = 1'b0;

assign m_axi_bus_B_WDATA = 32'd0;

assign m_axi_bus_B_WID = 1'd0;

assign m_axi_bus_B_WLAST = 1'b0;

assign m_axi_bus_B_WSTRB = 4'd0;

assign m_axi_bus_B_WUSER = 1'd0;

assign m_axi_bus_B_WVALID = 1'b0;

assign tmp_t1_address0 = zext_ln21_fu_238_p1;

assign tmp_t1_d0 = reg_146;

assign tmp_t2_address0 = zext_ln21_reg_319;

assign tmp_t2_d0 = reg_146;

assign tmp_t3_address0 = zext_ln21_reg_319;

assign tmp_t3_d0 = reg_146;

assign tmp_t4_address0 = zext_ln21_reg_319;

assign tmp_t4_d0 = reg_146;

assign zext_ln21_fu_238_p1 = i_V_1_reg_259_pp0_iter2_reg;

always @ (posedge ap_clk) begin
    zext_ln21_reg_319[31:6] <= 26'b00000000000000000000000000;
end

endmodule //test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_16_1
