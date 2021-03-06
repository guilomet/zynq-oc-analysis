// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_24_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_bus_res_AWVALID,
        m_axi_bus_res_AWREADY,
        m_axi_bus_res_AWADDR,
        m_axi_bus_res_AWID,
        m_axi_bus_res_AWLEN,
        m_axi_bus_res_AWSIZE,
        m_axi_bus_res_AWBURST,
        m_axi_bus_res_AWLOCK,
        m_axi_bus_res_AWCACHE,
        m_axi_bus_res_AWPROT,
        m_axi_bus_res_AWQOS,
        m_axi_bus_res_AWREGION,
        m_axi_bus_res_AWUSER,
        m_axi_bus_res_WVALID,
        m_axi_bus_res_WREADY,
        m_axi_bus_res_WDATA,
        m_axi_bus_res_WSTRB,
        m_axi_bus_res_WLAST,
        m_axi_bus_res_WID,
        m_axi_bus_res_WUSER,
        m_axi_bus_res_ARVALID,
        m_axi_bus_res_ARREADY,
        m_axi_bus_res_ARADDR,
        m_axi_bus_res_ARID,
        m_axi_bus_res_ARLEN,
        m_axi_bus_res_ARSIZE,
        m_axi_bus_res_ARBURST,
        m_axi_bus_res_ARLOCK,
        m_axi_bus_res_ARCACHE,
        m_axi_bus_res_ARPROT,
        m_axi_bus_res_ARQOS,
        m_axi_bus_res_ARREGION,
        m_axi_bus_res_ARUSER,
        m_axi_bus_res_RVALID,
        m_axi_bus_res_RREADY,
        m_axi_bus_res_RDATA,
        m_axi_bus_res_RLAST,
        m_axi_bus_res_RID,
        m_axi_bus_res_RUSER,
        m_axi_bus_res_RRESP,
        m_axi_bus_res_BVALID,
        m_axi_bus_res_BREADY,
        m_axi_bus_res_BRESP,
        m_axi_bus_res_BID,
        m_axi_bus_res_BUSER,
        sext_ln24,
        bitcast_ln25
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_bus_res_AWVALID;
input   m_axi_bus_res_AWREADY;
output  [31:0] m_axi_bus_res_AWADDR;
output  [0:0] m_axi_bus_res_AWID;
output  [31:0] m_axi_bus_res_AWLEN;
output  [2:0] m_axi_bus_res_AWSIZE;
output  [1:0] m_axi_bus_res_AWBURST;
output  [1:0] m_axi_bus_res_AWLOCK;
output  [3:0] m_axi_bus_res_AWCACHE;
output  [2:0] m_axi_bus_res_AWPROT;
output  [3:0] m_axi_bus_res_AWQOS;
output  [3:0] m_axi_bus_res_AWREGION;
output  [0:0] m_axi_bus_res_AWUSER;
output   m_axi_bus_res_WVALID;
input   m_axi_bus_res_WREADY;
output  [31:0] m_axi_bus_res_WDATA;
output  [3:0] m_axi_bus_res_WSTRB;
output   m_axi_bus_res_WLAST;
output  [0:0] m_axi_bus_res_WID;
output  [0:0] m_axi_bus_res_WUSER;
output   m_axi_bus_res_ARVALID;
input   m_axi_bus_res_ARREADY;
output  [31:0] m_axi_bus_res_ARADDR;
output  [0:0] m_axi_bus_res_ARID;
output  [31:0] m_axi_bus_res_ARLEN;
output  [2:0] m_axi_bus_res_ARSIZE;
output  [1:0] m_axi_bus_res_ARBURST;
output  [1:0] m_axi_bus_res_ARLOCK;
output  [3:0] m_axi_bus_res_ARCACHE;
output  [2:0] m_axi_bus_res_ARPROT;
output  [3:0] m_axi_bus_res_ARQOS;
output  [3:0] m_axi_bus_res_ARREGION;
output  [0:0] m_axi_bus_res_ARUSER;
input   m_axi_bus_res_RVALID;
output   m_axi_bus_res_RREADY;
input  [31:0] m_axi_bus_res_RDATA;
input   m_axi_bus_res_RLAST;
input  [0:0] m_axi_bus_res_RID;
input  [0:0] m_axi_bus_res_RUSER;
input  [1:0] m_axi_bus_res_RRESP;
input   m_axi_bus_res_BVALID;
output   m_axi_bus_res_BREADY;
input  [1:0] m_axi_bus_res_BRESP;
input  [0:0] m_axi_bus_res_BID;
input  [0:0] m_axi_bus_res_BUSER;
input  [29:0] sext_ln24;
input  [31:0] bitcast_ln25;

reg ap_idle;
reg m_axi_bus_res_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln24_fu_92_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    bus_res_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage0_01001;
reg   [2:0] i_fu_50;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_i_1;
wire   [2:0] add_ln24_fu_98_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end

test_scalaire_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln24_fu_92_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_50 <= add_ln24_fu_98_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_50 <= 3'd0;
        end
    end
end

always @ (*) begin
    if (((icmp_ln24_fu_92_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 3'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_50;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bus_res_blk_n_W = m_axi_bus_res_WREADY;
    end else begin
        bus_res_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m_axi_bus_res_WVALID = 1'b1;
    end else begin
        m_axi_bus_res_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln24_fu_98_p2 = (ap_sig_allocacmp_i_1 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((m_axi_bus_res_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((m_axi_bus_res_WREADY == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln24_fu_92_p2 = ((ap_sig_allocacmp_i_1 == 3'd7) ? 1'b1 : 1'b0);

assign m_axi_bus_res_ARADDR = 32'd0;

assign m_axi_bus_res_ARBURST = 2'd0;

assign m_axi_bus_res_ARCACHE = 4'd0;

assign m_axi_bus_res_ARID = 1'd0;

assign m_axi_bus_res_ARLEN = 32'd0;

assign m_axi_bus_res_ARLOCK = 2'd0;

assign m_axi_bus_res_ARPROT = 3'd0;

assign m_axi_bus_res_ARQOS = 4'd0;

assign m_axi_bus_res_ARREGION = 4'd0;

assign m_axi_bus_res_ARSIZE = 3'd0;

assign m_axi_bus_res_ARUSER = 1'd0;

assign m_axi_bus_res_ARVALID = 1'b0;

assign m_axi_bus_res_AWADDR = 32'd0;

assign m_axi_bus_res_AWBURST = 2'd0;

assign m_axi_bus_res_AWCACHE = 4'd0;

assign m_axi_bus_res_AWID = 1'd0;

assign m_axi_bus_res_AWLEN = 32'd0;

assign m_axi_bus_res_AWLOCK = 2'd0;

assign m_axi_bus_res_AWPROT = 3'd0;

assign m_axi_bus_res_AWQOS = 4'd0;

assign m_axi_bus_res_AWREGION = 4'd0;

assign m_axi_bus_res_AWSIZE = 3'd0;

assign m_axi_bus_res_AWUSER = 1'd0;

assign m_axi_bus_res_AWVALID = 1'b0;

assign m_axi_bus_res_BREADY = 1'b0;

assign m_axi_bus_res_RREADY = 1'b0;

assign m_axi_bus_res_WDATA = bitcast_ln25;

assign m_axi_bus_res_WID = 1'd0;

assign m_axi_bus_res_WLAST = 1'b0;

assign m_axi_bus_res_WSTRB = 4'd15;

assign m_axi_bus_res_WUSER = 1'd0;

endmodule //test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_24_2
