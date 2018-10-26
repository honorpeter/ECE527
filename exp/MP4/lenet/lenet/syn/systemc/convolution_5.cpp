// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "convolution_5.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic convolution_5::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic convolution_5::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<23> convolution_5::ap_ST_fsm_state1 = "1";
const sc_lv<23> convolution_5::ap_ST_fsm_state2 = "10";
const sc_lv<23> convolution_5::ap_ST_fsm_state3 = "100";
const sc_lv<23> convolution_5::ap_ST_fsm_state4 = "1000";
const sc_lv<23> convolution_5::ap_ST_fsm_state5 = "10000";
const sc_lv<23> convolution_5::ap_ST_fsm_state6 = "100000";
const sc_lv<23> convolution_5::ap_ST_fsm_state7 = "1000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state8 = "10000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state9 = "100000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state10 = "1000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state11 = "10000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state12 = "100000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state15 = "100000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state16 = "1000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state17 = "10000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state18 = "100000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state19 = "1000000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state20 = "10000000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state21 = "100000000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state22 = "1000000000000000000000";
const sc_lv<23> convolution_5::ap_ST_fsm_state23 = "10000000000000000000000";
const sc_lv<32> convolution_5::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> convolution_5::ap_const_lv32_1 = "1";
const sc_lv<1> convolution_5::ap_const_lv1_0 = "0";
const sc_lv<32> convolution_5::ap_const_lv32_2 = "10";
const sc_lv<1> convolution_5::ap_const_lv1_1 = "1";
const sc_lv<32> convolution_5::ap_const_lv32_3 = "11";
const sc_lv<32> convolution_5::ap_const_lv32_4 = "100";
const sc_lv<32> convolution_5::ap_const_lv32_5 = "101";
const sc_lv<32> convolution_5::ap_const_lv32_6 = "110";
const sc_lv<32> convolution_5::ap_const_lv32_A = "1010";
const sc_lv<32> convolution_5::ap_const_lv32_F = "1111";
const sc_lv<32> convolution_5::ap_const_lv32_10 = "10000";
const sc_lv<32> convolution_5::ap_const_lv32_15 = "10101";
const sc_lv<7> convolution_5::ap_const_lv7_0 = "0000000";
const sc_lv<32> convolution_5::ap_const_lv32_16 = "10110";
const sc_lv<3> convolution_5::ap_const_lv3_0 = "000";
const sc_lv<5> convolution_5::ap_const_lv5_0 = "00000";
const sc_lv<32> convolution_5::ap_const_lv32_B = "1011";
const sc_lv<32> convolution_5::ap_const_lv32_11 = "10001";
const sc_lv<32> convolution_5::ap_const_lv32_7 = "111";
const sc_lv<7> convolution_5::ap_const_lv7_78 = "1111000";
const sc_lv<7> convolution_5::ap_const_lv7_1 = "1";
const sc_lv<4> convolution_5::ap_const_lv4_0 = "0000";
const sc_lv<3> convolution_5::ap_const_lv3_5 = "101";
const sc_lv<3> convolution_5::ap_const_lv3_1 = "1";
const sc_lv<5> convolution_5::ap_const_lv5_10 = "10000";
const sc_lv<5> convolution_5::ap_const_lv5_1 = "1";
const sc_lv<2> convolution_5::ap_const_lv2_0 = "00";
const bool convolution_5::ap_const_boolean_1 = true;

convolution_5::convolution_5(sc_module_name name) : sc_module(name), mVcdFile(0) {
    conv1_fadd_32ns_3bkb_U53 = new conv1_fadd_32ns_3bkb<1,5,32,32,32>("conv1_fadd_32ns_3bkb_U53");
    conv1_fadd_32ns_3bkb_U53->clk(ap_clk);
    conv1_fadd_32ns_3bkb_U53->reset(ap_rst);
    conv1_fadd_32ns_3bkb_U53->din0(grp_fu_184_p0);
    conv1_fadd_32ns_3bkb_U53->din1(grp_fu_184_p1);
    conv1_fadd_32ns_3bkb_U53->ce(ap_var_for_const0);
    conv1_fadd_32ns_3bkb_U53->dout(grp_fu_184_p2);
    conv1_fmul_32ns_3cud_U54 = new conv1_fmul_32ns_3cud<1,4,32,32,32>("conv1_fmul_32ns_3cud_U54");
    conv1_fmul_32ns_3cud_U54->clk(ap_clk);
    conv1_fmul_32ns_3cud_U54->reset(ap_rst);
    conv1_fmul_32ns_3cud_U54->din0(weights_load_reg_487);
    conv1_fmul_32ns_3cud_U54->din1(input_load_reg_492);
    conv1_fmul_32ns_3cud_U54->ce(ap_var_for_const0);
    conv1_fmul_32ns_3cud_U54->dout(grp_fu_190_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state16);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state17);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state18);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state22);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_194_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_194_p2 );

    SC_METHOD(thread_bias_address0);
    sensitive << ( tmp_reg_402 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_bias_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ci_1_fu_268_p2);
    sensitive << ( ci_reg_173 );

    SC_METHOD(thread_co_2_fu_200_p2);
    sensitive << ( co_reg_104 );

    SC_METHOD(thread_exitcond1_fu_242_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( j_reg_150 );

    SC_METHOD(thread_exitcond2_fu_222_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_exitcond3_fu_194_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( co_reg_104 );

    SC_METHOD(thread_exitcond_fu_262_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ci_reg_173 );

    SC_METHOD(thread_grp_fu_184_p0);
    sensitive << ( sum_reg_126 );
    sensitive << ( sum_2_reg_161 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state18 );

    SC_METHOD(thread_grp_fu_184_p1);
    sensitive << ( tmp_11_reg_497 );
    sensitive << ( bias_load_reg_507 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state18 );

    SC_METHOD(thread_input_r_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_171_cast_fu_368_p1 );

    SC_METHOD(thread_input_r_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_m_fu_228_p2);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_n_fu_248_p2);
    sensitive << ( j_reg_150 );

    SC_METHOD(thread_output_0_0_address0);
    sensitive << ( tmp_reg_402 );
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_output_0_0_ce0);
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_output_0_0_d0);
    sensitive << ( tmp_s_reg_512 );
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_output_0_0_we0);
    sensitive << ( ap_CS_fsm_state23 );

    SC_METHOD(thread_p_shl1_fu_345_p1);
    sensitive << ( tmp_136_fu_337_p3 );

    SC_METHOD(thread_p_shl2_cast_fu_309_p3);
    sensitive << ( tmp_140_fu_300_p2 );

    SC_METHOD(thread_p_shl3_cast_fu_290_p1);
    sensitive << ( tmp_138_fu_282_p3 );

    SC_METHOD(thread_p_shl_cast_fu_372_p3);
    sensitive << ( tmp_147_reg_472 );

    SC_METHOD(thread_tmp_10_cast1_fu_274_p1);
    sensitive << ( ci_reg_173 );

    SC_METHOD(thread_tmp_10_cast_fu_278_p1);
    sensitive << ( ci_reg_173 );

    SC_METHOD(thread_tmp_136_fu_337_p3);
    sensitive << ( tmp_143_fu_328_p2 );

    SC_METHOD(thread_tmp_137_fu_210_p3);
    sensitive << ( co_reg_104 );

    SC_METHOD(thread_tmp_138_fu_282_p3);
    sensitive << ( ci_reg_173 );

    SC_METHOD(thread_tmp_139_fu_294_p2);
    sensitive << ( p_shl3_cast_fu_290_p1 );
    sensitive << ( tmp_10_cast_fu_278_p1 );

    SC_METHOD(thread_tmp_140_fu_300_p2);
    sensitive << ( tmp_8_cast_reg_426 );
    sensitive << ( tmp_139_fu_294_p2 );

    SC_METHOD(thread_tmp_141_fu_317_p2);
    sensitive << ( p_shl2_cast_fu_309_p3 );
    sensitive << ( tmp_168_cast_fu_305_p1 );

    SC_METHOD(thread_tmp_142_fu_323_p2);
    sensitive << ( tmp_9_cast_reg_449 );
    sensitive << ( tmp_141_fu_317_p2 );

    SC_METHOD(thread_tmp_143_fu_328_p2);
    sensitive << ( tmp_165_cast_reg_408 );
    sensitive << ( tmp_10_cast1_fu_274_p1 );

    SC_METHOD(thread_tmp_144_fu_349_p2);
    sensitive << ( p_shl1_fu_345_p1 );
    sensitive << ( tmp_172_cast_fu_333_p1 );

    SC_METHOD(thread_tmp_145_fu_355_p2);
    sensitive << ( tmp_8_reg_421 );
    sensitive << ( tmp_144_fu_349_p2 );

    SC_METHOD(thread_tmp_146_fu_360_p1);
    sensitive << ( tmp_145_fu_355_p2 );

    SC_METHOD(thread_tmp_147_fu_364_p1);
    sensitive << ( tmp_145_fu_355_p2 );

    SC_METHOD(thread_tmp_148_fu_379_p2);
    sensitive << ( tmp_146_reg_467 );
    sensitive << ( p_shl_cast_fu_372_p3 );

    SC_METHOD(thread_tmp_149_fu_384_p2);
    sensitive << ( tmp_9_cast1_reg_444 );
    sensitive << ( tmp_148_fu_379_p2 );

    SC_METHOD(thread_tmp_165_cast_fu_218_p1);
    sensitive << ( tmp_137_fu_210_p3 );

    SC_METHOD(thread_tmp_168_cast_fu_305_p1);
    sensitive << ( tmp_140_fu_300_p2 );

    SC_METHOD(thread_tmp_171_cast_fu_368_p1);
    sensitive << ( tmp_142_reg_462 );

    SC_METHOD(thread_tmp_172_cast_fu_333_p1);
    sensitive << ( tmp_143_fu_328_p2 );

    SC_METHOD(thread_tmp_178_cast_fu_389_p1);
    sensitive << ( tmp_149_fu_384_p2 );

    SC_METHOD(thread_tmp_8_cast_fu_238_p1);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_tmp_8_fu_234_p1);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_tmp_9_cast1_fu_254_p1);
    sensitive << ( j_reg_150 );

    SC_METHOD(thread_tmp_9_cast_fu_258_p1);
    sensitive << ( j_reg_150 );

    SC_METHOD(thread_tmp_fu_206_p1);
    sensitive << ( co_reg_104 );

    SC_METHOD(thread_weights_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( tmp_178_cast_fu_389_p1 );

    SC_METHOD(thread_weights_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond3_fu_194_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( exitcond2_fu_222_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond1_fu_242_p2 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( exitcond_fu_262_p2 );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "00000000000000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "convolution_5_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, input_r_address0, "(port)input_r_address0");
    sc_trace(mVcdFile, input_r_ce0, "(port)input_r_ce0");
    sc_trace(mVcdFile, input_r_q0, "(port)input_r_q0");
    sc_trace(mVcdFile, weights_address0, "(port)weights_address0");
    sc_trace(mVcdFile, weights_ce0, "(port)weights_ce0");
    sc_trace(mVcdFile, weights_q0, "(port)weights_q0");
    sc_trace(mVcdFile, bias_address0, "(port)bias_address0");
    sc_trace(mVcdFile, bias_ce0, "(port)bias_ce0");
    sc_trace(mVcdFile, bias_q0, "(port)bias_q0");
    sc_trace(mVcdFile, output_0_0_address0, "(port)output_0_0_address0");
    sc_trace(mVcdFile, output_0_0_ce0, "(port)output_0_0_ce0");
    sc_trace(mVcdFile, output_0_0_we0, "(port)output_0_0_we0");
    sc_trace(mVcdFile, output_0_0_d0, "(port)output_0_0_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, co_2_fu_200_p2, "co_2_fu_200_p2");
    sc_trace(mVcdFile, co_2_reg_397, "co_2_reg_397");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_fu_206_p1, "tmp_fu_206_p1");
    sc_trace(mVcdFile, tmp_reg_402, "tmp_reg_402");
    sc_trace(mVcdFile, exitcond3_fu_194_p2, "exitcond3_fu_194_p2");
    sc_trace(mVcdFile, tmp_165_cast_fu_218_p1, "tmp_165_cast_fu_218_p1");
    sc_trace(mVcdFile, tmp_165_cast_reg_408, "tmp_165_cast_reg_408");
    sc_trace(mVcdFile, m_fu_228_p2, "m_fu_228_p2");
    sc_trace(mVcdFile, m_reg_416, "m_reg_416");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_8_fu_234_p1, "tmp_8_fu_234_p1");
    sc_trace(mVcdFile, tmp_8_reg_421, "tmp_8_reg_421");
    sc_trace(mVcdFile, exitcond2_fu_222_p2, "exitcond2_fu_222_p2");
    sc_trace(mVcdFile, tmp_8_cast_fu_238_p1, "tmp_8_cast_fu_238_p1");
    sc_trace(mVcdFile, tmp_8_cast_reg_426, "tmp_8_cast_reg_426");
    sc_trace(mVcdFile, n_fu_248_p2, "n_fu_248_p2");
    sc_trace(mVcdFile, n_reg_439, "n_reg_439");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_9_cast1_fu_254_p1, "tmp_9_cast1_fu_254_p1");
    sc_trace(mVcdFile, tmp_9_cast1_reg_444, "tmp_9_cast1_reg_444");
    sc_trace(mVcdFile, exitcond1_fu_242_p2, "exitcond1_fu_242_p2");
    sc_trace(mVcdFile, tmp_9_cast_fu_258_p1, "tmp_9_cast_fu_258_p1");
    sc_trace(mVcdFile, tmp_9_cast_reg_449, "tmp_9_cast_reg_449");
    sc_trace(mVcdFile, ci_1_fu_268_p2, "ci_1_fu_268_p2");
    sc_trace(mVcdFile, ci_1_reg_457, "ci_1_reg_457");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_142_fu_323_p2, "tmp_142_fu_323_p2");
    sc_trace(mVcdFile, tmp_142_reg_462, "tmp_142_reg_462");
    sc_trace(mVcdFile, exitcond_fu_262_p2, "exitcond_fu_262_p2");
    sc_trace(mVcdFile, tmp_146_fu_360_p1, "tmp_146_fu_360_p1");
    sc_trace(mVcdFile, tmp_146_reg_467, "tmp_146_reg_467");
    sc_trace(mVcdFile, tmp_147_fu_364_p1, "tmp_147_fu_364_p1");
    sc_trace(mVcdFile, tmp_147_reg_472, "tmp_147_reg_472");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, weights_load_reg_487, "weights_load_reg_487");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, input_load_reg_492, "input_load_reg_492");
    sc_trace(mVcdFile, grp_fu_190_p2, "grp_fu_190_p2");
    sc_trace(mVcdFile, tmp_11_reg_497, "tmp_11_reg_497");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, grp_fu_184_p2, "grp_fu_184_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state16, "ap_CS_fsm_state16");
    sc_trace(mVcdFile, bias_load_reg_507, "bias_load_reg_507");
    sc_trace(mVcdFile, ap_CS_fsm_state17, "ap_CS_fsm_state17");
    sc_trace(mVcdFile, tmp_s_reg_512, "tmp_s_reg_512");
    sc_trace(mVcdFile, ap_CS_fsm_state22, "ap_CS_fsm_state22");
    sc_trace(mVcdFile, co_reg_104, "co_reg_104");
    sc_trace(mVcdFile, ap_CS_fsm_state23, "ap_CS_fsm_state23");
    sc_trace(mVcdFile, i_reg_115, "i_reg_115");
    sc_trace(mVcdFile, sum_reg_126, "sum_reg_126");
    sc_trace(mVcdFile, sum_1_reg_138, "sum_1_reg_138");
    sc_trace(mVcdFile, j_reg_150, "j_reg_150");
    sc_trace(mVcdFile, sum_2_reg_161, "sum_2_reg_161");
    sc_trace(mVcdFile, ci_reg_173, "ci_reg_173");
    sc_trace(mVcdFile, tmp_171_cast_fu_368_p1, "tmp_171_cast_fu_368_p1");
    sc_trace(mVcdFile, tmp_178_cast_fu_389_p1, "tmp_178_cast_fu_389_p1");
    sc_trace(mVcdFile, grp_fu_184_p0, "grp_fu_184_p0");
    sc_trace(mVcdFile, grp_fu_184_p1, "grp_fu_184_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, ap_CS_fsm_state18, "ap_CS_fsm_state18");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, tmp_137_fu_210_p3, "tmp_137_fu_210_p3");
    sc_trace(mVcdFile, tmp_138_fu_282_p3, "tmp_138_fu_282_p3");
    sc_trace(mVcdFile, p_shl3_cast_fu_290_p1, "p_shl3_cast_fu_290_p1");
    sc_trace(mVcdFile, tmp_10_cast_fu_278_p1, "tmp_10_cast_fu_278_p1");
    sc_trace(mVcdFile, tmp_139_fu_294_p2, "tmp_139_fu_294_p2");
    sc_trace(mVcdFile, tmp_140_fu_300_p2, "tmp_140_fu_300_p2");
    sc_trace(mVcdFile, p_shl2_cast_fu_309_p3, "p_shl2_cast_fu_309_p3");
    sc_trace(mVcdFile, tmp_168_cast_fu_305_p1, "tmp_168_cast_fu_305_p1");
    sc_trace(mVcdFile, tmp_141_fu_317_p2, "tmp_141_fu_317_p2");
    sc_trace(mVcdFile, tmp_10_cast1_fu_274_p1, "tmp_10_cast1_fu_274_p1");
    sc_trace(mVcdFile, tmp_143_fu_328_p2, "tmp_143_fu_328_p2");
    sc_trace(mVcdFile, tmp_136_fu_337_p3, "tmp_136_fu_337_p3");
    sc_trace(mVcdFile, p_shl1_fu_345_p1, "p_shl1_fu_345_p1");
    sc_trace(mVcdFile, tmp_172_cast_fu_333_p1, "tmp_172_cast_fu_333_p1");
    sc_trace(mVcdFile, tmp_144_fu_349_p2, "tmp_144_fu_349_p2");
    sc_trace(mVcdFile, tmp_145_fu_355_p2, "tmp_145_fu_355_p2");
    sc_trace(mVcdFile, p_shl_cast_fu_372_p3, "p_shl_cast_fu_372_p3");
    sc_trace(mVcdFile, tmp_148_fu_379_p2, "tmp_148_fu_379_p2");
    sc_trace(mVcdFile, tmp_149_fu_384_p2, "tmp_149_fu_384_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

convolution_5::~convolution_5() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete conv1_fadd_32ns_3bkb_U53;
    delete conv1_fmul_32ns_3cud_U54;
}

void convolution_5::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void convolution_5::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_242_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        ci_reg_173 = ap_const_lv5_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        ci_reg_173 = ci_1_reg_457.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state23.read())) {
        co_reg_104 = co_2_reg_397.read();
    } else if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        co_reg_104 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_242_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        i_reg_115 = m_reg_416.read();
    } else if ((esl_seteq<1,1,1>(exitcond3_fu_194_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        i_reg_115 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(exitcond_fu_262_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        j_reg_150 = n_reg_439.read();
    } else if ((esl_seteq<1,1,1>(exitcond2_fu_222_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        j_reg_150 = ap_const_lv3_0;
    }
    if ((esl_seteq<1,1,1>(exitcond_fu_262_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        sum_1_reg_138 = sum_2_reg_161.read();
    } else if ((esl_seteq<1,1,1>(exitcond2_fu_222_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        sum_1_reg_138 = sum_reg_126.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_242_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        sum_2_reg_161 = sum_1_reg_138.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        sum_2_reg_161 = grp_fu_184_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_242_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        sum_reg_126 = sum_1_reg_138.read();
    } else if ((esl_seteq<1,1,1>(exitcond3_fu_194_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        sum_reg_126 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state17.read())) {
        bias_load_reg_507 = bias_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ci_1_reg_457 = ci_1_fu_268_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        co_2_reg_397 = co_2_fu_200_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        input_load_reg_492 = input_r_q0.read();
        weights_load_reg_487 = weights_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        m_reg_416 = m_fu_228_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        n_reg_439 = n_fu_248_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        tmp_11_reg_497 = grp_fu_190_p2.read();
    }
    if ((esl_seteq<1,1,1>(exitcond_fu_262_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        tmp_142_reg_462 = tmp_142_fu_323_p2.read();
        tmp_146_reg_467 = tmp_146_fu_360_p1.read();
        tmp_147_reg_472 = tmp_147_fu_364_p1.read();
    }
    if ((esl_seteq<1,1,1>(exitcond3_fu_194_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        tmp_165_cast_reg_408 = tmp_165_cast_fu_218_p1.read();
        tmp_reg_402 = tmp_fu_206_p1.read();
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_222_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        tmp_8_cast_reg_426 = tmp_8_cast_fu_238_p1.read();
        tmp_8_reg_421 = tmp_8_fu_234_p1.read();
    }
    if ((esl_seteq<1,1,1>(exitcond1_fu_242_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        tmp_9_cast1_reg_444 = tmp_9_cast1_fu_254_p1.read();
        tmp_9_cast_reg_449 = tmp_9_cast_fu_258_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state22.read())) {
        tmp_s_reg_512 = grp_fu_184_p2.read();
    }
}

void convolution_5::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void convolution_5::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void convolution_5::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[11];
}

void convolution_5::thread_ap_CS_fsm_state16() {
    ap_CS_fsm_state16 = ap_CS_fsm.read()[15];
}

void convolution_5::thread_ap_CS_fsm_state17() {
    ap_CS_fsm_state17 = ap_CS_fsm.read()[16];
}

void convolution_5::thread_ap_CS_fsm_state18() {
    ap_CS_fsm_state18 = ap_CS_fsm.read()[17];
}

void convolution_5::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void convolution_5::thread_ap_CS_fsm_state22() {
    ap_CS_fsm_state22 = ap_CS_fsm.read()[21];
}

void convolution_5::thread_ap_CS_fsm_state23() {
    ap_CS_fsm_state23 = ap_CS_fsm.read()[22];
}

void convolution_5::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void convolution_5::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void convolution_5::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void convolution_5::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void convolution_5::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void convolution_5::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void convolution_5::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(exitcond3_fu_194_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void convolution_5::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void convolution_5::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(exitcond3_fu_194_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void convolution_5::thread_bias_address0() {
    bias_address0 =  (sc_lv<7>) (tmp_reg_402.read());
}

void convolution_5::thread_bias_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        bias_ce0 = ap_const_logic_1;
    } else {
        bias_ce0 = ap_const_logic_0;
    }
}

void convolution_5::thread_ci_1_fu_268_p2() {
    ci_1_fu_268_p2 = (!ci_reg_173.read().is_01() || !ap_const_lv5_1.is_01())? sc_lv<5>(): (sc_biguint<5>(ci_reg_173.read()) + sc_biguint<5>(ap_const_lv5_1));
}

void convolution_5::thread_co_2_fu_200_p2() {
    co_2_fu_200_p2 = (!co_reg_104.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(co_reg_104.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void convolution_5::thread_exitcond1_fu_242_p2() {
    exitcond1_fu_242_p2 = (!j_reg_150.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_150.read() == ap_const_lv3_5);
}

void convolution_5::thread_exitcond2_fu_222_p2() {
    exitcond2_fu_222_p2 = (!i_reg_115.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_115.read() == ap_const_lv3_5);
}

void convolution_5::thread_exitcond3_fu_194_p2() {
    exitcond3_fu_194_p2 = (!co_reg_104.read().is_01() || !ap_const_lv7_78.is_01())? sc_lv<1>(): sc_lv<1>(co_reg_104.read() == ap_const_lv7_78);
}

void convolution_5::thread_exitcond_fu_262_p2() {
    exitcond_fu_262_p2 = (!ci_reg_173.read().is_01() || !ap_const_lv5_10.is_01())? sc_lv<1>(): sc_lv<1>(ci_reg_173.read() == ap_const_lv5_10);
}

void convolution_5::thread_grp_fu_184_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        grp_fu_184_p0 = sum_reg_126.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_184_p0 = sum_2_reg_161.read();
    } else {
        grp_fu_184_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void convolution_5::thread_grp_fu_184_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state18.read())) {
        grp_fu_184_p1 = bias_load_reg_507.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        grp_fu_184_p1 = tmp_11_reg_497.read();
    } else {
        grp_fu_184_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void convolution_5::thread_input_r_address0() {
    input_r_address0 =  (sc_lv<9>) (tmp_171_cast_fu_368_p1.read());
}

void convolution_5::thread_input_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        input_r_ce0 = ap_const_logic_1;
    } else {
        input_r_ce0 = ap_const_logic_0;
    }
}

void convolution_5::thread_m_fu_228_p2() {
    m_fu_228_p2 = (!i_reg_115.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i_reg_115.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void convolution_5::thread_n_fu_248_p2() {
    n_fu_248_p2 = (!j_reg_150.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(j_reg_150.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void convolution_5::thread_output_0_0_address0() {
    output_0_0_address0 =  (sc_lv<7>) (tmp_reg_402.read());
}

void convolution_5::thread_output_0_0_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state23.read())) {
        output_0_0_ce0 = ap_const_logic_1;
    } else {
        output_0_0_ce0 = ap_const_logic_0;
    }
}

void convolution_5::thread_output_0_0_d0() {
    output_0_0_d0 = tmp_s_reg_512.read();
}

void convolution_5::thread_output_0_0_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state23.read())) {
        output_0_0_we0 = ap_const_logic_1;
    } else {
        output_0_0_we0 = ap_const_logic_0;
    }
}

void convolution_5::thread_p_shl1_fu_345_p1() {
    p_shl1_fu_345_p1 = esl_zext<64,14>(tmp_136_fu_337_p3.read());
}

void convolution_5::thread_p_shl2_cast_fu_309_p3() {
    p_shl2_cast_fu_309_p3 = esl_concat<8,2>(tmp_140_fu_300_p2.read(), ap_const_lv2_0);
}

void convolution_5::thread_p_shl3_cast_fu_290_p1() {
    p_shl3_cast_fu_290_p1 = esl_zext<8,7>(tmp_138_fu_282_p3.read());
}

void convolution_5::thread_p_shl_cast_fu_372_p3() {
    p_shl_cast_fu_372_p3 = esl_concat<15,2>(tmp_147_reg_472.read(), ap_const_lv2_0);
}

void convolution_5::thread_tmp_10_cast1_fu_274_p1() {
    tmp_10_cast1_fu_274_p1 = esl_zext<12,5>(ci_reg_173.read());
}

void convolution_5::thread_tmp_10_cast_fu_278_p1() {
    tmp_10_cast_fu_278_p1 = esl_zext<8,5>(ci_reg_173.read());
}

void convolution_5::thread_tmp_136_fu_337_p3() {
    tmp_136_fu_337_p3 = esl_concat<12,2>(tmp_143_fu_328_p2.read(), ap_const_lv2_0);
}

void convolution_5::thread_tmp_137_fu_210_p3() {
    tmp_137_fu_210_p3 = esl_concat<7,4>(co_reg_104.read(), ap_const_lv4_0);
}

void convolution_5::thread_tmp_138_fu_282_p3() {
    tmp_138_fu_282_p3 = esl_concat<5,2>(ci_reg_173.read(), ap_const_lv2_0);
}

void convolution_5::thread_tmp_139_fu_294_p2() {
    tmp_139_fu_294_p2 = (!p_shl3_cast_fu_290_p1.read().is_01() || !tmp_10_cast_fu_278_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(p_shl3_cast_fu_290_p1.read()) + sc_biguint<8>(tmp_10_cast_fu_278_p1.read()));
}

void convolution_5::thread_tmp_140_fu_300_p2() {
    tmp_140_fu_300_p2 = (!tmp_8_cast_reg_426.read().is_01() || !tmp_139_fu_294_p2.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_8_cast_reg_426.read()) + sc_biguint<8>(tmp_139_fu_294_p2.read()));
}

void convolution_5::thread_tmp_141_fu_317_p2() {
    tmp_141_fu_317_p2 = (!p_shl2_cast_fu_309_p3.read().is_01() || !tmp_168_cast_fu_305_p1.read().is_01())? sc_lv<10>(): (sc_biguint<10>(p_shl2_cast_fu_309_p3.read()) + sc_biguint<10>(tmp_168_cast_fu_305_p1.read()));
}

void convolution_5::thread_tmp_142_fu_323_p2() {
    tmp_142_fu_323_p2 = (!tmp_9_cast_reg_449.read().is_01() || !tmp_141_fu_317_p2.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_9_cast_reg_449.read()) + sc_biguint<10>(tmp_141_fu_317_p2.read()));
}

void convolution_5::thread_tmp_143_fu_328_p2() {
    tmp_143_fu_328_p2 = (!tmp_10_cast1_fu_274_p1.read().is_01() || !tmp_165_cast_reg_408.read().is_01())? sc_lv<12>(): (sc_biguint<12>(tmp_10_cast1_fu_274_p1.read()) + sc_biguint<12>(tmp_165_cast_reg_408.read()));
}

void convolution_5::thread_tmp_144_fu_349_p2() {
    tmp_144_fu_349_p2 = (!p_shl1_fu_345_p1.read().is_01() || !tmp_172_cast_fu_333_p1.read().is_01())? sc_lv<64>(): (sc_biguint<64>(p_shl1_fu_345_p1.read()) + sc_biguint<64>(tmp_172_cast_fu_333_p1.read()));
}

void convolution_5::thread_tmp_145_fu_355_p2() {
    tmp_145_fu_355_p2 = (!tmp_8_reg_421.read().is_01() || !tmp_144_fu_349_p2.read().is_01())? sc_lv<64>(): (sc_biguint<64>(tmp_8_reg_421.read()) + sc_biguint<64>(tmp_144_fu_349_p2.read()));
}

void convolution_5::thread_tmp_146_fu_360_p1() {
    tmp_146_fu_360_p1 = tmp_145_fu_355_p2.read().range(17-1, 0);
}

void convolution_5::thread_tmp_147_fu_364_p1() {
    tmp_147_fu_364_p1 = tmp_145_fu_355_p2.read().range(15-1, 0);
}

void convolution_5::thread_tmp_148_fu_379_p2() {
    tmp_148_fu_379_p2 = (!p_shl_cast_fu_372_p3.read().is_01() || !tmp_146_reg_467.read().is_01())? sc_lv<17>(): (sc_biguint<17>(p_shl_cast_fu_372_p3.read()) + sc_biguint<17>(tmp_146_reg_467.read()));
}

void convolution_5::thread_tmp_149_fu_384_p2() {
    tmp_149_fu_384_p2 = (!tmp_9_cast1_reg_444.read().is_01() || !tmp_148_fu_379_p2.read().is_01())? sc_lv<17>(): (sc_biguint<17>(tmp_9_cast1_reg_444.read()) + sc_biguint<17>(tmp_148_fu_379_p2.read()));
}

void convolution_5::thread_tmp_165_cast_fu_218_p1() {
    tmp_165_cast_fu_218_p1 = esl_zext<12,11>(tmp_137_fu_210_p3.read());
}

void convolution_5::thread_tmp_168_cast_fu_305_p1() {
    tmp_168_cast_fu_305_p1 = esl_zext<10,8>(tmp_140_fu_300_p2.read());
}

void convolution_5::thread_tmp_171_cast_fu_368_p1() {
    tmp_171_cast_fu_368_p1 = esl_zext<64,10>(tmp_142_reg_462.read());
}

void convolution_5::thread_tmp_172_cast_fu_333_p1() {
    tmp_172_cast_fu_333_p1 = esl_zext<64,12>(tmp_143_fu_328_p2.read());
}

void convolution_5::thread_tmp_178_cast_fu_389_p1() {
    tmp_178_cast_fu_389_p1 = esl_zext<64,17>(tmp_149_fu_384_p2.read());
}

void convolution_5::thread_tmp_8_cast_fu_238_p1() {
    tmp_8_cast_fu_238_p1 = esl_zext<8,3>(i_reg_115.read());
}

void convolution_5::thread_tmp_8_fu_234_p1() {
    tmp_8_fu_234_p1 = esl_zext<64,3>(i_reg_115.read());
}

void convolution_5::thread_tmp_9_cast1_fu_254_p1() {
    tmp_9_cast1_fu_254_p1 = esl_zext<17,3>(j_reg_150.read());
}

void convolution_5::thread_tmp_9_cast_fu_258_p1() {
    tmp_9_cast_fu_258_p1 = esl_zext<10,3>(j_reg_150.read());
}

void convolution_5::thread_tmp_fu_206_p1() {
    tmp_fu_206_p1 = esl_zext<64,7>(co_reg_104.read());
}

void convolution_5::thread_weights_address0() {
    weights_address0 =  (sc_lv<16>) (tmp_178_cast_fu_389_p1.read());
}

void convolution_5::thread_weights_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        weights_ce0 = ap_const_logic_1;
    } else {
        weights_ce0 = ap_const_logic_0;
    }
}

void convolution_5::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(exitcond3_fu_194_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(exitcond2_fu_222_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state17;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(exitcond1_fu_242_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(exitcond_fu_262_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state15;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_fsm_state16;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 65536 : 
            ap_NS_fsm = ap_ST_fsm_state18;
            break;
        case 131072 : 
            ap_NS_fsm = ap_ST_fsm_state19;
            break;
        case 262144 : 
            ap_NS_fsm = ap_ST_fsm_state20;
            break;
        case 524288 : 
            ap_NS_fsm = ap_ST_fsm_state21;
            break;
        case 1048576 : 
            ap_NS_fsm = ap_ST_fsm_state22;
            break;
        case 2097152 : 
            ap_NS_fsm = ap_ST_fsm_state23;
            break;
        case 4194304 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<23>) ("XXXXXXXXXXXXXXXXXXXXXXX");
            break;
    }
}

}
