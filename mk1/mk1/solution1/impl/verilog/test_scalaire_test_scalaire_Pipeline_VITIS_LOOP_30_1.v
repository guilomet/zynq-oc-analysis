// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_30_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        tmp,
        A_V_TDATA,
        A_V_TVALID,
        A_V_TREADY,
        B_V_TDATA,
        B_V_TVALID,
        B_V_TREADY,
        tmpRes_1_out,
        tmpRes_1_out_ap_vld,
        grp_fu_85_p_din0,
        grp_fu_85_p_din1,
        grp_fu_85_p_dout0,
        grp_fu_85_p_ce
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] tmp;
input  [31:0] A_V_TDATA;
input   A_V_TVALID;
output   A_V_TREADY;
input  [31:0] B_V_TDATA;
input   B_V_TVALID;
output   B_V_TREADY;
output  [31:0] tmpRes_1_out;
output   tmpRes_1_out_ap_vld;
output  [31:0] grp_fu_85_p_din0;
output  [31:0] grp_fu_85_p_din1;
input  [31:0] grp_fu_85_p_dout0;
output   grp_fu_85_p_ce;

reg ap_idle;
reg A_V_TREADY;
reg B_V_TREADY;
reg tmpRes_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state5;
wire    ap_block_state5_pp0_stage4_iter0;
wire   [0:0] icmp_ln46_fu_127_p2;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    A_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
reg    B_V_TDATA_blk_n;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [31:0] aa_fu_108_p1;
reg    ap_block_state2_pp0_stage1_iter0;
wire   [31:0] bb_fu_113_p1;
reg   [7:0] i_fu_44;
wire   [7:0] i_3_fu_121_p2;
wire    ap_loop_init;
reg   [31:0] tmp_1_fu_48;
reg   [31:0] ap_sig_allocacmp_tmp_3;
reg   [31:0] tmpRes_fu_52;
wire   [31:0] grp_fu_81_p2;
reg    grp_fu_81_ce;
wire    ap_block_state3_pp0_stage2_iter0;
wire    ap_block_state4_pp0_stage3_iter0;
reg    grp_fu_86_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_done_reg = 1'b0;
end

test_scalaire_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmpRes_fu_52),
    .din1(ap_sig_allocacmp_tmp_3),
    .ce(grp_fu_81_ce),
    .dout(grp_fu_81_p2)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        i_fu_44 <= 8'd0;
    end else if (((icmp_ln46_fu_127_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        i_fu_44 <= i_3_fu_121_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        tmp_1_fu_48 <= tmp;
    end else if (((icmp_ln46_fu_127_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_1_fu_48 <= grp_fu_85_p_dout0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln46_fu_127_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmpRes_fu_52 <= grp_fu_81_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        A_V_TDATA_blk_n = A_V_TVALID;
    end else begin
        A_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID)) & (1'b1 == ap_CS_fsm_state2))) begin
        A_V_TREADY = 1'b1;
    end else begin
        A_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        B_V_TDATA_blk_n = B_V_TVALID;
    end else begin
        B_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID)) & (1'b1 == ap_CS_fsm_state2))) begin
        B_V_TREADY = 1'b1;
    end else begin
        B_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln46_fu_127_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_tmp_3 = tmp;
    end else begin
        ap_sig_allocacmp_tmp_3 = tmp_1_fu_48;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & ((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0)))) begin
        grp_fu_81_ce = 1'b0;
    end else begin
        grp_fu_81_ce = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) | ((1'b1 == ap_CS_fsm_state2) & ((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID))))) begin
        grp_fu_86_ce = 1'b0;
    end else begin
        grp_fu_86_ce = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln46_fu_127_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        tmpRes_1_out_ap_vld = 1'b1;
    end else begin
        tmpRes_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign aa_fu_108_p1 = A_V_TDATA;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

always @ (*) begin
    ap_block_state2_pp0_stage1_iter0 = ((1'b0 == B_V_TVALID) | (1'b0 == A_V_TVALID));
end

assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;

assign bb_fu_113_p1 = B_V_TDATA;

assign grp_fu_85_p_ce = grp_fu_86_ce;

assign grp_fu_85_p_din0 = aa_fu_108_p1;

assign grp_fu_85_p_din1 = bb_fu_113_p1;

assign i_3_fu_121_p2 = (i_fu_44 + 8'd1);

assign icmp_ln46_fu_127_p2 = ((i_fu_44 == 8'd254) ? 1'b1 : 1'b0);

assign tmpRes_1_out = grp_fu_81_p2;

endmodule //test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_30_1
