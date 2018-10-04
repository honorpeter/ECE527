// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="parta1_2,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.634000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=24,HLS_SYN_FF=1400,HLS_SYN_LUT=1237,HLS_VERSION=2018_2}" *)

module parta1_2 (
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

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_pp0_stage0 = 9'd64;
parameter    ap_ST_fsm_pp0_stage1 = 9'd128;
parameter    ap_ST_fsm_state13 = 9'd256;

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
reg[13:0] C_address0;
reg C_ce0;
reg C_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [95:0] indvar_flatten1_reg_114;
reg   [30:0] i_reg_125;
reg   [63:0] indvar_flatten_reg_136;
reg   [30:0] j_reg_147;
reg   [30:0] k_reg_158;
wire   [63:0] bound_fu_177_p2;
reg   [63:0] bound_reg_386;
wire    ap_CS_fsm_state2;
wire   [95:0] grp_fu_190_p2;
reg   [95:0] bound6_reg_402;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_5_mid_fu_196_p2;
reg   [0:0] tmp_5_mid_reg_407;
wire   [0:0] exitcond_flatten1_fu_210_p2;
reg   [0:0] exitcond_flatten1_reg_412;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state7_pp0_stage0_iter0;
wire    ap_block_state9_pp0_stage0_iter1;
wire    ap_block_state11_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten1_reg_412_pp0_iter1_reg;
reg   [0:0] exitcond_flatten1_reg_412_pp0_iter2_reg;
wire   [95:0] indvar_flatten_next1_fu_215_p2;
reg   [95:0] indvar_flatten_next1_reg_416;
reg    ap_enable_reg_pp0_iter0;
wire   [30:0] tmp_1_mid2_v_fu_248_p3;
reg   [30:0] tmp_1_mid2_v_reg_421;
wire  signed [14:0] tmp_3_fu_256_p1;
reg  signed [14:0] tmp_3_reg_426;
wire   [30:0] k_mid2_fu_273_p3;
reg   [30:0] k_mid2_reg_431;
wire   [14:0] tmp_12_fu_297_p3;
reg   [14:0] tmp_12_reg_436;
wire   [30:0] j_mid2_fu_305_p3;
reg   [30:0] j_mid2_reg_442;
wire  signed [14:0] tmp_13_fu_313_p1;
reg  signed [14:0] tmp_13_reg_447;
wire   [63:0] indvar_flatten_next_fu_323_p3;
reg   [63:0] indvar_flatten_next_reg_453;
wire  signed [14:0] tmp_fu_368_p2;
reg  signed [14:0] tmp_reg_458;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state8_pp0_stage1_iter0;
wire    ap_block_state10_pp0_stage1_iter1;
wire    ap_block_state12_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
wire   [30:0] k_1_fu_331_p2;
reg   [30:0] k_1_reg_464;
reg   [13:0] C_addr_reg_469;
reg   [13:0] C_addr_reg_469_pp0_iter2_reg;
reg  signed [31:0] A_load_reg_484;
reg  signed [31:0] B_load_reg_489;
wire   [31:0] tmp_7_fu_358_p2;
reg   [31:0] tmp_7_reg_494;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state7;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter2;
reg   [95:0] ap_phi_mux_indvar_flatten1_phi_fu_118_p4;
wire    ap_block_pp0_stage0;
reg   [30:0] ap_phi_mux_i_phi_fu_129_p4;
reg   [63:0] ap_phi_mux_indvar_flatten_phi_fu_140_p4;
reg   [30:0] ap_phi_mux_j_phi_fu_151_p4;
reg   [30:0] ap_phi_mux_k_phi_fu_162_p4;
wire  signed [63:0] tmp_1_cast_fu_340_p1;
wire  signed [63:0] tmp_2_cast_fu_349_p1;
wire  signed [63:0] tmp_9_cast_fu_354_p1;
wire    ap_block_pp0_stage1;
wire   [31:0] bound_fu_177_p0;
wire   [31:0] bound_fu_177_p1;
wire   [63:0] grp_fu_190_p0;
wire   [31:0] grp_fu_190_p1;
wire   [31:0] k_cast_fu_201_p1;
wire   [0:0] exitcond_flatten7_fu_227_p2;
wire   [30:0] i_1_fu_221_p2;
wire   [0:0] tmp_5_fu_205_p2;
wire   [30:0] j_mid_fu_232_p3;
wire   [0:0] tmp_5_mid1_fu_260_p3;
wire   [30:0] k_mid_fu_240_p3;
wire   [14:0] tmp_6_fu_281_p1;
wire   [30:0] j_1_fu_267_p2;
wire   [14:0] tmp_10_fu_285_p3;
wire   [14:0] tmp_11_fu_293_p1;
wire   [63:0] indvar_flatten_op_fu_317_p2;
(* use_dsp48 = "no" *) wire   [14:0] tmp_1_fu_336_p2;
(* use_dsp48 = "no" *) wire   [14:0] tmp_2_fu_345_p2;
wire  signed [14:0] grp_fu_373_p3;
wire   [7:0] tmp_fu_368_p0;
wire   [7:0] grp_fu_373_p0;
wire    ap_CS_fsm_state13;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [63:0] bound_fu_177_p00;
wire   [63:0] bound_fu_177_p10;
wire   [95:0] grp_fu_190_p00;
wire   [95:0] grp_fu_190_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

parta1_2_mul_64nsbkb #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 96 ))
parta1_2_mul_64nsbkb_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_190_p0),
    .din1(grp_fu_190_p1),
    .ce(1'b1),
    .dout(grp_fu_190_p2)
);

parta1_2_mul_mul_cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 15 ))
parta1_2_mul_mul_cud_U2(
    .din0(tmp_fu_368_p0),
    .din1(tmp_3_reg_426),
    .dout(tmp_fu_368_p2)
);

parta1_2_mac_muladEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 15 ),
    .dout_WIDTH( 15 ))
parta1_2_mac_muladEe_U3(
    .din0(grp_fu_373_p0),
    .din1(tmp_13_reg_447),
    .din2(tmp_12_reg_436),
    .dout(grp_fu_373_p3)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state7) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state7)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state7);
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
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_125 <= tmp_1_mid2_v_reg_421;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_125 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        indvar_flatten1_reg_114 <= indvar_flatten_next1_reg_416;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        indvar_flatten1_reg_114 <= 96'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        indvar_flatten_reg_136 <= indvar_flatten_next_reg_453;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        indvar_flatten_reg_136 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_reg_147 <= j_mid2_reg_442;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        j_reg_147 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        k_reg_158 <= k_1_reg_464;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        k_reg_158 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (exitcond_flatten1_reg_412_pp0_iter1_reg == 1'd0))) begin
        A_load_reg_484 <= A_q0;
        B_load_reg_489 <= B_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_addr_reg_469 <= tmp_1_cast_fu_340_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_addr_reg_469_pp0_iter2_reg <= C_addr_reg_469;
        exitcond_flatten1_reg_412 <= exitcond_flatten1_fu_210_p2;
        exitcond_flatten1_reg_412_pp0_iter1_reg <= exitcond_flatten1_reg_412;
        exitcond_flatten1_reg_412_pp0_iter2_reg <= exitcond_flatten1_reg_412_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bound6_reg_402 <= grp_fu_190_p2;
        tmp_5_mid_reg_407 <= tmp_5_mid_fu_196_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        bound_reg_386 <= bound_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_next1_reg_416 <= indvar_flatten_next1_fu_215_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        indvar_flatten_next_reg_453 <= indvar_flatten_next_fu_323_p3;
        j_mid2_reg_442 <= j_mid2_fu_305_p3;
        tmp_1_mid2_v_reg_421 <= tmp_1_mid2_v_fu_248_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        k_1_reg_464 <= k_1_fu_331_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten1_fu_210_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_mid2_reg_431 <= k_mid2_fu_273_p3;
        tmp_12_reg_436 <= tmp_12_fu_297_p3;
        tmp_13_reg_447 <= tmp_13_fu_313_p1;
        tmp_3_reg_426 <= tmp_3_fu_256_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten1_reg_412_pp0_iter1_reg == 1'd0))) begin
        tmp_7_reg_494 <= tmp_7_fu_358_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_reg_458 <= tmp_fu_368_p2;
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
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            C_address0 = C_addr_reg_469_pp0_iter2_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            C_address0 = C_addr_reg_469;
        end else begin
            C_address0 = 'bx;
        end
    end else begin
        C_address0 = 'bx;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (exitcond_flatten1_reg_412_pp0_iter2_reg == 1'd0))) begin
        C_we0 = 1'b1;
    end else begin
        C_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_flatten1_fu_210_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state7 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state7 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_129_p4 = tmp_1_mid2_v_reg_421;
    end else begin
        ap_phi_mux_i_phi_fu_129_p4 = i_reg_125;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten1_phi_fu_118_p4 = indvar_flatten_next1_reg_416;
    end else begin
        ap_phi_mux_indvar_flatten1_phi_fu_118_p4 = indvar_flatten1_reg_114;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_140_p4 = indvar_flatten_next_reg_453;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_140_p4 = indvar_flatten_reg_136;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_phi_fu_151_p4 = j_mid2_reg_442;
    end else begin
        ap_phi_mux_j_phi_fu_151_p4 = j_reg_147;
    end
end

always @ (*) begin
    if (((exitcond_flatten1_reg_412 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_k_phi_fu_162_p4 = k_1_reg_464;
    end else begin
        ap_phi_mux_k_phi_fu_162_p4 = k_reg_158;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten1_fu_210_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((exitcond_flatten1_fu_210_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = tmp_2_cast_fu_349_p1;

assign B_address0 = tmp_9_cast_fu_354_p1;

assign C_d0 = (tmp_7_reg_494 + C_q0);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_fu_177_p0 = bound_fu_177_p00;

assign bound_fu_177_p00 = nA;

assign bound_fu_177_p1 = bound_fu_177_p10;

assign bound_fu_177_p10 = nC;

assign bound_fu_177_p2 = (bound_fu_177_p0 * bound_fu_177_p1);

assign exitcond_flatten1_fu_210_p2 = ((ap_phi_mux_indvar_flatten1_phi_fu_118_p4 == bound6_reg_402) ? 1'b1 : 1'b0);

assign exitcond_flatten7_fu_227_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_140_p4 == bound_reg_386) ? 1'b1 : 1'b0);

assign grp_fu_190_p0 = grp_fu_190_p00;

assign grp_fu_190_p00 = bound_reg_386;

assign grp_fu_190_p1 = grp_fu_190_p10;

assign grp_fu_190_p10 = mC;

assign grp_fu_373_p0 = 15'd100;

assign i_1_fu_221_p2 = (31'd1 + ap_phi_mux_i_phi_fu_129_p4);

assign indvar_flatten_next1_fu_215_p2 = (ap_phi_mux_indvar_flatten1_phi_fu_118_p4 + 96'd1);

assign indvar_flatten_next_fu_323_p3 = ((exitcond_flatten7_fu_227_p2[0:0] === 1'b1) ? 64'd1 : indvar_flatten_op_fu_317_p2);

assign indvar_flatten_op_fu_317_p2 = (64'd1 + ap_phi_mux_indvar_flatten_phi_fu_140_p4);

assign j_1_fu_267_p2 = (31'd1 + j_mid_fu_232_p3);

assign j_mid2_fu_305_p3 = ((tmp_5_mid1_fu_260_p3[0:0] === 1'b1) ? j_mid_fu_232_p3 : j_1_fu_267_p2);

assign j_mid_fu_232_p3 = ((exitcond_flatten7_fu_227_p2[0:0] === 1'b1) ? 31'd0 : ap_phi_mux_j_phi_fu_151_p4);

assign k_1_fu_331_p2 = (31'd1 + k_mid2_reg_431);

assign k_cast_fu_201_p1 = ap_phi_mux_k_phi_fu_162_p4;

assign k_mid2_fu_273_p3 = ((tmp_5_mid1_fu_260_p3[0:0] === 1'b1) ? k_mid_fu_240_p3 : 31'd0);

assign k_mid_fu_240_p3 = ((exitcond_flatten7_fu_227_p2[0:0] === 1'b1) ? 31'd0 : ap_phi_mux_k_phi_fu_162_p4);

assign tmp_10_fu_285_p3 = ((exitcond_flatten7_fu_227_p2[0:0] === 1'b1) ? 15'd0 : tmp_6_fu_281_p1);

assign tmp_11_fu_293_p1 = j_1_fu_267_p2[14:0];

assign tmp_12_fu_297_p3 = ((tmp_5_mid1_fu_260_p3[0:0] === 1'b1) ? tmp_10_fu_285_p3 : tmp_11_fu_293_p1);

assign tmp_13_fu_313_p1 = k_mid2_fu_273_p3[14:0];

assign tmp_1_cast_fu_340_p1 = $signed(tmp_1_fu_336_p2);

assign tmp_1_fu_336_p2 = ($signed(tmp_reg_458) + $signed(tmp_12_reg_436));

assign tmp_1_mid2_v_fu_248_p3 = ((exitcond_flatten7_fu_227_p2[0:0] === 1'b1) ? i_1_fu_221_p2 : ap_phi_mux_i_phi_fu_129_p4);

assign tmp_2_cast_fu_349_p1 = $signed(tmp_2_fu_345_p2);

assign tmp_2_fu_345_p2 = ($signed(tmp_reg_458) + $signed(tmp_13_reg_447));

assign tmp_3_fu_256_p1 = tmp_1_mid2_v_fu_248_p3[14:0];

assign tmp_5_fu_205_p2 = (($signed(k_cast_fu_201_p1) < $signed(nA)) ? 1'b1 : 1'b0);

assign tmp_5_mid1_fu_260_p3 = ((exitcond_flatten7_fu_227_p2[0:0] === 1'b1) ? tmp_5_mid_reg_407 : tmp_5_fu_205_p2);

assign tmp_5_mid_fu_196_p2 = (($signed(nA) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign tmp_6_fu_281_p1 = ap_phi_mux_j_phi_fu_151_p4[14:0];

assign tmp_7_fu_358_p2 = ($signed(B_load_reg_489) * $signed(A_load_reg_484));

assign tmp_9_cast_fu_354_p1 = grp_fu_373_p3;

assign tmp_fu_368_p0 = 15'd100;

endmodule //parta1_2