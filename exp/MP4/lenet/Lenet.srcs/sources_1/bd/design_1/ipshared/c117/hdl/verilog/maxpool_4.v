// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module maxpool_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;
output  [8:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [31:0] output_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] c_1_fu_178_p2;
reg   [4:0] c_1_reg_501;
wire    ap_CS_fsm_state2;
wire   [8:0] tmp_41_fu_212_p2;
reg   [8:0] tmp_41_reg_506;
wire   [0:0] exitcond4_fu_172_p2;
wire   [7:0] tmp_43_fu_230_p2;
reg   [7:0] tmp_43_reg_511;
wire   [2:0] h_1_fu_242_p2;
reg   [2:0] h_1_reg_519;
wire    ap_CS_fsm_state3;
wire   [3:0] tmp_s_fu_248_p3;
reg   [3:0] tmp_s_reg_524;
wire   [0:0] exitcond3_fu_236_p2;
wire   [9:0] tmp_45_fu_277_p2;
reg   [9:0] tmp_45_reg_529;
wire   [2:0] w_1_fu_289_p2;
reg   [2:0] w_1_reg_537;
wire    ap_CS_fsm_state4;
wire   [3:0] tmp_5_fu_295_p3;
reg   [3:0] tmp_5_reg_542;
wire   [0:0] exitcond2_fu_283_p2;
wire   [1:0] i_13_fu_313_p2;
reg   [1:0] i_13_reg_550;
wire    ap_CS_fsm_state5;
wire   [11:0] tmp_48_fu_353_p2;
reg   [11:0] tmp_48_reg_555;
wire   [0:0] exitcond1_fu_307_p2;
wire   [1:0] j_9_fu_383_p2;
reg   [1:0] j_9_reg_563;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond_fu_377_p2;
reg   [31:0] input_load_reg_573;
wire    ap_CS_fsm_state7;
wire   [31:0] max_value_2_fu_491_p3;
wire    ap_CS_fsm_state8;
reg   [4:0] c_reg_86;
reg   [2:0] h_reg_97;
reg   [2:0] w_reg_108;
reg   [31:0] max_value_reg_120;
reg   [1:0] i_reg_133;
reg   [31:0] max_value_1_reg_144;
reg   [1:0] j_reg_156;
wire   [63:0] tmp_69_cast_fu_368_p1;
wire   [63:0] tmp_74_cast_fu_403_p1;
wire   [7:0] tmp_39_fu_188_p3;
wire   [5:0] tmp_40_fu_200_p3;
wire   [8:0] p_shl2_cast_fu_208_p1;
wire   [8:0] p_shl1_cast_fu_196_p1;
wire   [6:0] tmp_42_fu_218_p3;
wire   [7:0] tmp_cast_fu_184_p1;
wire   [7:0] p_shl_cast_fu_226_p1;
wire   [7:0] tmp_4_cast_fu_256_p1;
wire   [7:0] tmp_44_fu_260_p2;
wire   [9:0] p_shl3_cast_fu_269_p3;
wire   [9:0] tmp_66_cast_fu_265_p1;
wire   [3:0] i_cast2_fu_303_p1;
wire   [3:0] tmp_7_fu_319_p2;
wire   [8:0] tmp_8_cast_fu_324_p1;
wire   [8:0] tmp_47_fu_328_p2;
wire   [9:0] tmp_fu_341_p3;
wire   [11:0] p_shl4_cast_fu_333_p3;
wire   [11:0] p_shl5_cast_fu_349_p1;
wire   [9:0] tmp_6_cast_fu_359_p1;
wire   [9:0] tmp_46_fu_363_p2;
wire   [3:0] j_cast1_fu_373_p1;
wire   [3:0] tmp_9_fu_389_p2;
wire   [11:0] tmp_1_cast_fu_394_p1;
wire   [11:0] tmp_49_fu_398_p2;
wire   [31:0] max_value_1_to_int_fu_408_p1;
wire   [31:0] input_load_to_int_fu_426_p1;
wire   [7:0] tmp_21_fu_412_p4;
wire   [22:0] tmp_24_fu_422_p1;
wire   [0:0] notrhs_fu_449_p2;
wire   [0:0] notlhs_fu_443_p2;
wire   [7:0] tmp_23_fu_429_p4;
wire   [22:0] tmp_30_fu_439_p1;
wire   [0:0] notrhs7_fu_467_p2;
wire   [0:0] notlhs6_fu_461_p2;
wire   [0:0] tmp_25_fu_455_p2;
wire   [0:0] tmp_26_fu_473_p2;
wire   [0:0] tmp_27_fu_479_p2;
wire   [0:0] tmp_28_fu_167_p2;
wire   [0:0] tmp_29_fu_485_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

conv1_fcmp_32ns_3dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
conv1_fcmp_32ns_3dEe_U53(
    .din0(max_value_1_reg_144),
    .din1(input_load_reg_573),
    .opcode(5'd2),
    .dout(tmp_28_fu_167_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_236_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        c_reg_86 <= c_1_reg_501;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        c_reg_86 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_283_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        h_reg_97 <= h_1_reg_519;
    end else if (((exitcond4_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        h_reg_97 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (exitcond_fu_377_p2 == 1'd1))) begin
        i_reg_133 <= i_13_reg_550;
    end else if (((exitcond2_fu_283_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i_reg_133 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_307_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        j_reg_156 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        j_reg_156 <= j_9_reg_563;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_307_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        max_value_1_reg_144 <= max_value_reg_120;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        max_value_1_reg_144 <= max_value_2_fu_491_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (exitcond_fu_377_p2 == 1'd1))) begin
        max_value_reg_120 <= max_value_1_reg_144;
    end else if (((exitcond2_fu_283_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        max_value_reg_120 <= 32'd3546862757;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        w_reg_108 <= 3'd0;
    end else if (((exitcond1_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        w_reg_108 <= w_1_reg_537;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        c_1_reg_501 <= c_1_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        h_1_reg_519 <= h_1_fu_242_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_13_reg_550 <= i_13_fu_313_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        input_load_reg_573 <= input_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        j_9_reg_563 <= j_9_fu_383_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond4_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_41_reg_506[8 : 1] <= tmp_41_fu_212_p2[8 : 1];
        tmp_43_reg_511 <= tmp_43_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_236_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_45_reg_529 <= tmp_45_fu_277_p2;
        tmp_s_reg_524[3 : 1] <= tmp_s_fu_248_p3[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_307_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_48_reg_555[11 : 1] <= tmp_48_fu_353_p2[11 : 1];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_283_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_5_reg_542[3 : 1] <= tmp_5_fu_295_p3[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        w_1_reg_537 <= w_1_fu_289_p2;
    end
end

always @ (*) begin
    if ((((exitcond4_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((exitcond4_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
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
            if (((exitcond4_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond3_fu_236_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond2_fu_283_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond1_fu_307_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (exitcond_fu_377_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign c_1_fu_178_p2 = (c_reg_86 + 5'd1);

assign exitcond1_fu_307_p2 = ((i_reg_133 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond2_fu_283_p2 = ((w_reg_108 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond3_fu_236_p2 = ((h_reg_97 == 3'd5) ? 1'b1 : 1'b0);

assign exitcond4_fu_172_p2 = ((c_reg_86 == 5'd16) ? 1'b1 : 1'b0);

assign exitcond_fu_377_p2 = ((j_reg_156 == 2'd2) ? 1'b1 : 1'b0);

assign h_1_fu_242_p2 = (h_reg_97 + 3'd1);

assign i_13_fu_313_p2 = (i_reg_133 + 2'd1);

assign i_cast2_fu_303_p1 = i_reg_133;

assign input_load_to_int_fu_426_p1 = input_load_reg_573;

assign input_r_address0 = tmp_74_cast_fu_403_p1;

assign j_9_fu_383_p2 = (j_reg_156 + 2'd1);

assign j_cast1_fu_373_p1 = j_reg_156;

assign max_value_1_to_int_fu_408_p1 = max_value_1_reg_144;

assign max_value_2_fu_491_p3 = ((tmp_29_fu_485_p2[0:0] === 1'b1) ? max_value_1_reg_144 : input_load_reg_573);

assign notlhs6_fu_461_p2 = ((tmp_23_fu_429_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notlhs_fu_443_p2 = ((tmp_21_fu_412_p4 != 8'd255) ? 1'b1 : 1'b0);

assign notrhs7_fu_467_p2 = ((tmp_30_fu_439_p1 == 23'd0) ? 1'b1 : 1'b0);

assign notrhs_fu_449_p2 = ((tmp_24_fu_422_p1 == 23'd0) ? 1'b1 : 1'b0);

assign output_r_address0 = tmp_69_cast_fu_368_p1;

assign output_r_d0 = max_value_reg_120;

assign p_shl1_cast_fu_196_p1 = tmp_39_fu_188_p3;

assign p_shl2_cast_fu_208_p1 = tmp_40_fu_200_p3;

assign p_shl3_cast_fu_269_p3 = {{tmp_44_fu_260_p2}, {2'd0}};

assign p_shl4_cast_fu_333_p3 = {{tmp_47_fu_328_p2}, {3'd0}};

assign p_shl5_cast_fu_349_p1 = tmp_fu_341_p3;

assign p_shl_cast_fu_226_p1 = tmp_42_fu_218_p3;

assign tmp_1_cast_fu_394_p1 = tmp_9_fu_389_p2;

assign tmp_21_fu_412_p4 = {{max_value_1_to_int_fu_408_p1[30:23]}};

assign tmp_23_fu_429_p4 = {{input_load_to_int_fu_426_p1[30:23]}};

assign tmp_24_fu_422_p1 = max_value_1_to_int_fu_408_p1[22:0];

assign tmp_25_fu_455_p2 = (notrhs_fu_449_p2 | notlhs_fu_443_p2);

assign tmp_26_fu_473_p2 = (notrhs7_fu_467_p2 | notlhs6_fu_461_p2);

assign tmp_27_fu_479_p2 = (tmp_26_fu_473_p2 & tmp_25_fu_455_p2);

assign tmp_29_fu_485_p2 = (tmp_28_fu_167_p2 & tmp_27_fu_479_p2);

assign tmp_30_fu_439_p1 = input_load_to_int_fu_426_p1[22:0];

assign tmp_39_fu_188_p3 = {{c_reg_86}, {3'd0}};

assign tmp_40_fu_200_p3 = {{c_reg_86}, {1'd0}};

assign tmp_41_fu_212_p2 = (p_shl2_cast_fu_208_p1 + p_shl1_cast_fu_196_p1);

assign tmp_42_fu_218_p3 = {{c_reg_86}, {2'd0}};

assign tmp_43_fu_230_p2 = (tmp_cast_fu_184_p1 + p_shl_cast_fu_226_p1);

assign tmp_44_fu_260_p2 = (tmp_4_cast_fu_256_p1 + tmp_43_reg_511);

assign tmp_45_fu_277_p2 = (p_shl3_cast_fu_269_p3 + tmp_66_cast_fu_265_p1);

assign tmp_46_fu_363_p2 = (tmp_45_reg_529 + tmp_6_cast_fu_359_p1);

assign tmp_47_fu_328_p2 = (tmp_8_cast_fu_324_p1 + tmp_41_reg_506);

assign tmp_48_fu_353_p2 = (p_shl4_cast_fu_333_p3 + p_shl5_cast_fu_349_p1);

assign tmp_49_fu_398_p2 = (tmp_48_reg_555 + tmp_1_cast_fu_394_p1);

assign tmp_4_cast_fu_256_p1 = h_reg_97;

assign tmp_5_fu_295_p3 = {{w_reg_108}, {1'd0}};

assign tmp_66_cast_fu_265_p1 = tmp_44_fu_260_p2;

assign tmp_69_cast_fu_368_p1 = tmp_46_fu_363_p2;

assign tmp_6_cast_fu_359_p1 = w_reg_108;

assign tmp_74_cast_fu_403_p1 = tmp_49_fu_398_p2;

assign tmp_7_fu_319_p2 = (tmp_s_reg_524 + i_cast2_fu_303_p1);

assign tmp_8_cast_fu_324_p1 = tmp_7_fu_319_p2;

assign tmp_9_fu_389_p2 = (j_cast1_fu_373_p1 + tmp_5_reg_542);

assign tmp_cast_fu_184_p1 = c_reg_86;

assign tmp_fu_341_p3 = {{tmp_47_fu_328_p2}, {1'd0}};

assign tmp_s_fu_248_p3 = {{h_reg_97}, {1'd0}};

assign w_1_fu_289_p2 = (w_reg_108 + 3'd1);

always @ (posedge ap_clk) begin
    tmp_41_reg_506[0] <= 1'b0;
    tmp_s_reg_524[0] <= 1'b0;
    tmp_5_reg_542[0] <= 1'b0;
    tmp_48_reg_555[0] <= 1'b0;
end

endmodule //maxpool_4