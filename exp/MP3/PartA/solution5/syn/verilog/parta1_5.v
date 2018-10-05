// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="parta1_5,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.060000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=7,HLS_SYN_FF=742,HLS_SYN_LUT=658,HLS_VERSION=2018_2}" *)

module parta1_5 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_address0,
        A_ce0,
        A_q0,
        B_address0,
        B_ce0,
        B_q0,
        C_address0,
        C_ce0,
        C_we0,
        C_d0,
        C_q0,
        mA,
        nA,
        mB,
        nB,
        mC,
        nC
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_pp0_stage0 = 5'd4;
parameter    ap_ST_fsm_pp0_stage1 = 5'd8;
parameter    ap_ST_fsm_state9 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [13:0] B_address0;
output   B_ce0;
input  [31:0] B_q0;
output  [13:0] C_address0;
output   C_ce0;
output   C_we0;
output  [31:0] C_d0;
input  [31:0] C_q0;
input  [31:0] mA;
input  [31:0] nA;
input  [31:0] mB;
input  [31:0] nB;
input  [31:0] mC;
input  [31:0] nC;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg A_ce0;
reg B_ce0;
reg C_ce0;
reg C_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] indvar_flatten_reg_163;
reg   [30:0] j_reg_174;
reg   [30:0] k_reg_185;
wire   [63:0] bound_fu_204_p2;
reg   [63:0] bound_reg_352;
wire   [14:0] tmp_1_fu_210_p1;
reg   [14:0] tmp_1_reg_357;
wire    ap_CS_fsm_state2;
wire   [37:0] next_mul_fu_220_p2;
reg   [37:0] next_mul_reg_363;
wire   [0:0] tmp_fu_230_p2;
wire   [30:0] i_1_fu_235_p2;
reg   [30:0] i_1_reg_372;
wire   [0:0] exitcond_flatten_fu_250_p2;
reg   [0:0] exitcond_flatten_reg_377;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state5_pp0_stage0_iter1;
wire    ap_block_state7_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten_reg_377_pp0_iter1_reg;
reg   [0:0] exitcond_flatten_reg_377_pp0_iter2_reg;
wire   [63:0] indvar_flatten_next_fu_255_p2;
reg   [63:0] indvar_flatten_next_reg_381;
reg    ap_enable_reg_pp0_iter0;
wire   [30:0] k_mid2_fu_267_p3;
reg   [30:0] k_mid2_reg_386;
wire   [30:0] tmp_3_mid2_v_fu_275_p3;
reg   [30:0] tmp_3_mid2_v_reg_391;
wire  signed [14:0] tmp_2_fu_283_p1;
reg  signed [14:0] tmp_2_reg_396;
wire   [14:0] tmp_6_fu_287_p1;
reg   [14:0] tmp_6_reg_402;
wire  signed [14:0] tmp_3_fu_337_p2;
reg  signed [14:0] tmp_3_reg_408;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state4_pp0_stage1_iter0;
wire    ap_block_state6_pp0_stage1_iter1;
wire    ap_block_state8_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
reg   [13:0] C_addr_1_reg_414;
reg   [13:0] C_addr_1_reg_414_pp0_iter1_reg;
wire   [30:0] k_1_fu_300_p2;
reg   [30:0] k_1_reg_419;
reg  signed [31:0] A_load_reg_434;
reg  signed [31:0] B_load_reg_439;
wire   [31:0] tmp_7_fu_327_p2;
reg   [31:0] tmp_7_reg_444;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter2;
reg   [30:0] i_reg_141;
wire    ap_CS_fsm_state9;
reg   [37:0] phi_mul_reg_152;
reg   [63:0] ap_phi_mux_indvar_flatten_phi_fu_167_p4;
wire    ap_block_pp0_stage0;
reg   [30:0] ap_phi_mux_j_phi_fu_178_p4;
reg   [30:0] ap_phi_mux_k_phi_fu_189_p4;
wire   [63:0] tmp_9_cast_fu_295_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_10_cast_fu_313_p1;
wire  signed [63:0] tmp_11_cast_fu_322_p1;
wire   [31:0] bound_fu_204_p0;
wire   [31:0] bound_fu_204_p1;
wire   [31:0] i_cast_fu_226_p1;
wire   [31:0] k_cast_fu_241_p1;
wire   [0:0] tmp_5_fu_245_p2;
wire   [30:0] j_1_fu_261_p2;
wire   [14:0] tmp_9_fu_291_p2;
wire   [14:0] tmp_10_fu_309_p2;
(* use_dsp48 = "no" *) wire   [14:0] tmp_11_fu_318_p2;
wire   [7:0] tmp_3_fu_337_p0;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [63:0] bound_fu_204_p00;
wire   [63:0] bound_fu_204_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

parta1_5_mul_mul_bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 15 ))
parta1_5_mul_mul_bkb_U1(
    .din0(tmp_3_fu_337_p0),
    .din1(tmp_2_reg_396),
    .dout(tmp_3_fu_337_p2)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_reg_141 <= i_1_reg_372;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_141 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        indvar_flatten_reg_163 <= indvar_flatten_next_reg_381;
    end else if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        indvar_flatten_reg_163 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_reg_174 <= tmp_3_mid2_v_reg_391;
    end else if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_174 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        k_reg_185 <= k_1_reg_419;
    end else if (((tmp_fu_230_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        k_reg_185 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        phi_mul_reg_152 <= next_mul_reg_363;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul_reg_152 <= 38'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_377_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        A_load_reg_434 <= A_q0;
        B_load_reg_439 <= B_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        C_addr_1_reg_414 <= tmp_9_cast_fu_295_p1;
        tmp_3_reg_408 <= tmp_3_fu_337_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        C_addr_1_reg_414_pp0_iter1_reg <= C_addr_1_reg_414;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        bound_reg_352 <= bound_fu_204_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_377 <= exitcond_flatten_fu_250_p2;
        exitcond_flatten_reg_377_pp0_iter1_reg <= exitcond_flatten_reg_377;
        exitcond_flatten_reg_377_pp0_iter2_reg <= exitcond_flatten_reg_377_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_372 <= i_1_fu_235_p2;
        next_mul_reg_363 <= next_mul_fu_220_p2;
        tmp_1_reg_357 <= tmp_1_fu_210_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_next_reg_381 <= indvar_flatten_next_fu_255_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_377 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        k_1_reg_419 <= k_1_fu_300_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_250_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_mid2_reg_386 <= k_mid2_fu_267_p3;
        tmp_2_reg_396 <= tmp_2_fu_283_p1;
        tmp_6_reg_402 <= tmp_6_fu_287_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_250_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_3_mid2_v_reg_391 <= tmp_3_mid2_v_fu_275_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_377_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_7_reg_444 <= tmp_7_fu_327_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        C_ce0 = 1'b1;
    end else begin
        C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_377_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        C_we0 = 1'b1;
    end else begin
        C_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_250_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_167_p4 = indvar_flatten_next_reg_381;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_167_p4 = indvar_flatten_reg_163;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_phi_fu_178_p4 = tmp_3_mid2_v_reg_391;
    end else begin
        ap_phi_mux_j_phi_fu_178_p4 = j_reg_174;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_377 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_k_phi_fu_189_p4 = k_1_reg_419;
    end else begin
        ap_phi_mux_k_phi_fu_189_p4 = k_reg_185;
    end
end

always @ (*) begin
    if (((tmp_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((tmp_fu_230_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten_fu_250_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((exitcond_flatten_fu_250_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = tmp_10_cast_fu_313_p1;

assign B_address0 = tmp_11_cast_fu_322_p1;

assign C_address0 = C_addr_1_reg_414_pp0_iter1_reg;

assign C_d0 = (tmp_7_reg_444 + C_q0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_fu_204_p0 = bound_fu_204_p00;

assign bound_fu_204_p00 = nA;

assign bound_fu_204_p1 = bound_fu_204_p10;

assign bound_fu_204_p10 = nC;

assign bound_fu_204_p2 = (bound_fu_204_p0 * bound_fu_204_p1);

assign exitcond_flatten_fu_250_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_167_p4 == bound_reg_352) ? 1'b1 : 1'b0);

assign i_1_fu_235_p2 = (31'd1 + i_reg_141);

assign i_cast_fu_226_p1 = i_reg_141;

assign indvar_flatten_next_fu_255_p2 = (ap_phi_mux_indvar_flatten_phi_fu_167_p4 + 64'd1);

assign j_1_fu_261_p2 = (31'd1 + ap_phi_mux_j_phi_fu_178_p4);

assign k_1_fu_300_p2 = (31'd1 + k_mid2_reg_386);

assign k_cast_fu_241_p1 = ap_phi_mux_k_phi_fu_189_p4;

assign k_mid2_fu_267_p3 = ((tmp_5_fu_245_p2[0:0] === 1'b1) ? ap_phi_mux_k_phi_fu_189_p4 : 31'd0);

assign next_mul_fu_220_p2 = (38'd100 + phi_mul_reg_152);

assign tmp_10_cast_fu_313_p1 = tmp_10_fu_309_p2;

assign tmp_10_fu_309_p2 = (tmp_1_reg_357 + tmp_6_reg_402);

assign tmp_11_cast_fu_322_p1 = $signed(tmp_11_fu_318_p2);

assign tmp_11_fu_318_p2 = ($signed(tmp_3_reg_408) + $signed(tmp_6_reg_402));

assign tmp_1_fu_210_p1 = phi_mul_reg_152[14:0];

assign tmp_2_fu_283_p1 = tmp_3_mid2_v_fu_275_p3[14:0];

assign tmp_3_fu_337_p0 = 15'd100;

assign tmp_3_mid2_v_fu_275_p3 = ((tmp_5_fu_245_p2[0:0] === 1'b1) ? ap_phi_mux_j_phi_fu_178_p4 : j_1_fu_261_p2);

assign tmp_5_fu_245_p2 = (($signed(k_cast_fu_241_p1) < $signed(nA)) ? 1'b1 : 1'b0);

assign tmp_6_fu_287_p1 = k_mid2_fu_267_p3[14:0];

assign tmp_7_fu_327_p2 = ($signed(B_load_reg_439) * $signed(A_load_reg_434));

assign tmp_9_cast_fu_295_p1 = tmp_9_fu_291_p2;

assign tmp_9_fu_291_p2 = ($signed(tmp_1_reg_357) + $signed(tmp_2_reg_396));

assign tmp_fu_230_p2 = (($signed(i_cast_fu_226_p1) < $signed(mC)) ? 1'b1 : 1'b0);

endmodule //parta1_5
