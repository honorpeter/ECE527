// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="unop_mm,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=558,HLS_SYN_LUT=556,HLS_VERSION=2018_2}" *)

module unop_mm (
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

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

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

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] next_mul4_fu_176_p2;
reg   [31:0] next_mul4_reg_299;
wire    ap_CS_fsm_state2;
wire   [31:0] next_mul2_fu_181_p2;
reg   [31:0] next_mul2_reg_304;
wire   [30:0] i_1_fu_195_p2;
reg   [30:0] i_1_reg_312;
wire   [31:0] j_cast_fu_201_p1;
reg   [31:0] j_cast_reg_317;
wire    ap_CS_fsm_state3;
wire   [30:0] j_1_fu_210_p2;
reg   [30:0] j_1_reg_325;
reg   [13:0] C_addr_reg_330;
wire   [0:0] tmp_3_fu_205_p2;
wire   [30:0] k_1_fu_236_p2;
reg   [30:0] k_1_reg_338;
wire    ap_CS_fsm_state4;
wire   [0:0] tmp_7_fu_231_p2;
wire   [31:0] next_mul_fu_253_p2;
reg   [31:0] next_mul_reg_348;
reg  signed [31:0] A_load_reg_358;
wire    ap_CS_fsm_state5;
reg  signed [31:0] B_load_reg_363;
wire   [31:0] tmp_10_fu_268_p2;
reg   [31:0] tmp_10_reg_368;
wire    ap_CS_fsm_state6;
reg   [31:0] C_load_reg_373;
reg   [30:0] i_reg_108;
reg   [31:0] phi_mul1_reg_119;
reg   [31:0] phi_mul3_reg_131;
reg   [30:0] j_reg_143;
wire   [0:0] tmp_fu_190_p2;
reg   [30:0] k_reg_154;
wire    ap_CS_fsm_state7;
reg   [31:0] phi_mul_reg_165;
wire  signed [63:0] tmp_5_fu_222_p1;
wire  signed [63:0] tmp_9_fu_248_p1;
wire  signed [63:0] tmp_2_fu_263_p1;
wire   [31:0] i_cast_fu_186_p1;
wire   [31:0] tmp_4_fu_216_p2;
wire   [31:0] k_cast_fu_227_p1;
wire   [31:0] tmp_8_fu_242_p2;
wire   [31:0] tmp_6_fu_258_p2;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_108 <= i_1_reg_312;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_108 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j_reg_143 <= j_1_reg_325;
    end else if (((tmp_fu_190_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_143 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        k_reg_154 <= k_1_reg_338;
    end else if (((tmp_3_fu_205_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_154 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul1_reg_119 <= next_mul2_reg_304;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul1_reg_119 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul3_reg_131 <= next_mul4_reg_299;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul3_reg_131 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        phi_mul_reg_165 <= next_mul_reg_348;
    end else if (((tmp_3_fu_205_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_reg_165 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        A_load_reg_358 <= A_q0;
        B_load_reg_363 <= B_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_3_fu_205_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        C_addr_reg_330 <= tmp_5_fu_222_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        C_load_reg_373 <= C_q0;
        tmp_10_reg_368 <= tmp_10_fu_268_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_312 <= i_1_fu_195_p2;
        next_mul2_reg_304 <= next_mul2_fu_181_p2;
        next_mul4_reg_299 <= next_mul4_fu_176_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_325 <= j_1_fu_210_p2;
        j_cast_reg_317[30 : 0] <= j_cast_fu_201_p1[30 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        k_1_reg_338 <= k_1_fu_236_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_231_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        next_mul_reg_348 <= next_mul_fu_253_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        A_ce0 = 1'b1;
    end else begin
        A_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        B_ce0 = 1'b1;
    end else begin
        B_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        C_ce0 = 1'b1;
    end else begin
        C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        C_we0 = 1'b1;
    end else begin
        C_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_190_p2 == 1'd0))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_190_p2 == 1'd0))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_190_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_3_fu_205_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_7_fu_231_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_address0 = tmp_9_fu_248_p1;

assign B_address0 = tmp_2_fu_263_p1;

assign C_address0 = C_addr_reg_330;

assign C_d0 = (C_load_reg_373 + tmp_10_reg_368);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign i_1_fu_195_p2 = (i_reg_108 + 31'd1);

assign i_cast_fu_186_p1 = i_reg_108;

assign j_1_fu_210_p2 = (j_reg_143 + 31'd1);

assign j_cast_fu_201_p1 = j_reg_143;

assign k_1_fu_236_p2 = (k_reg_154 + 31'd1);

assign k_cast_fu_227_p1 = k_reg_154;

assign next_mul2_fu_181_p2 = (phi_mul1_reg_119 + nA);

assign next_mul4_fu_176_p2 = (phi_mul3_reg_131 + nC);

assign next_mul_fu_253_p2 = (phi_mul_reg_165 + nB);

assign tmp_10_fu_268_p2 = ($signed(B_load_reg_363) * $signed(A_load_reg_358));

assign tmp_2_fu_263_p1 = $signed(tmp_6_fu_258_p2);

assign tmp_3_fu_205_p2 = (($signed(j_cast_fu_201_p1) < $signed(nC)) ? 1'b1 : 1'b0);

assign tmp_4_fu_216_p2 = (j_cast_fu_201_p1 + phi_mul3_reg_131);

assign tmp_5_fu_222_p1 = $signed(tmp_4_fu_216_p2);

assign tmp_6_fu_258_p2 = (phi_mul_reg_165 + j_cast_reg_317);

assign tmp_7_fu_231_p2 = (($signed(k_cast_fu_227_p1) < $signed(nA)) ? 1'b1 : 1'b0);

assign tmp_8_fu_242_p2 = (k_cast_fu_227_p1 + phi_mul1_reg_119);

assign tmp_9_fu_248_p1 = $signed(tmp_8_fu_242_p2);

assign tmp_fu_190_p2 = (($signed(i_cast_fu_186_p1) < $signed(mC)) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    j_cast_reg_317[31] <= 1'b0;
end

endmodule //unop_mm
