// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _parta1_5_HH_
#define _parta1_5_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct parta1_5 : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_in< sc_lv<32> > A_q0;
    sc_out< sc_lv<14> > B_address0;
    sc_out< sc_logic > B_ce0;
    sc_in< sc_lv<32> > B_q0;
    sc_out< sc_lv<14> > C_address0;
    sc_out< sc_logic > C_ce0;
    sc_out< sc_logic > C_we0;
    sc_out< sc_lv<32> > C_d0;
    sc_in< sc_lv<32> > C_q0;
    sc_in< sc_lv<32> > mA;
    sc_in< sc_lv<32> > nA;
    sc_in< sc_lv<32> > mB;
    sc_in< sc_lv<32> > nB;
    sc_in< sc_lv<32> > mC;
    sc_in< sc_lv<32> > nC;


    // Module declarations
    parta1_5(sc_module_name name);
    SC_HAS_PROCESS(parta1_5);

    ~parta1_5();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > tmp_1_fu_185_p1;
    sc_signal< sc_lv<15> > tmp_1_reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<38> > next_mul2_fu_195_p2;
    sc_signal< sc_lv<38> > next_mul2_reg_324;
    sc_signal< sc_lv<31> > i_1_fu_210_p2;
    sc_signal< sc_lv<31> > i_1_reg_332;
    sc_signal< sc_lv<1> > tmp_fu_205_p2;
    sc_signal< sc_lv<31> > j_1_fu_225_p2;
    sc_signal< sc_lv<31> > j_1_reg_344;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<15> > tmp_3_fu_231_p1;
    sc_signal< sc_lv<15> > tmp_3_reg_349;
    sc_signal< sc_lv<1> > tmp_2_fu_220_p2;
    sc_signal< sc_lv<14> > C_addr_1_reg_354;
    sc_signal< sc_lv<31> > k_1_fu_258_p2;
    sc_signal< sc_lv<31> > k_1_reg_362;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_5_fu_253_p2;
    sc_signal< sc_lv<38> > next_mul_fu_278_p2;
    sc_signal< sc_lv<38> > next_mul_reg_372;
    sc_signal< sc_lv<32> > A_load_reg_382;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > B_load_reg_387;
    sc_signal< sc_lv<32> > tmp_7_fu_294_p2;
    sc_signal< sc_lv<32> > tmp_7_reg_392;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > C_load_reg_397;
    sc_signal< sc_lv<31> > i_reg_130;
    sc_signal< sc_lv<38> > phi_mul1_reg_141;
    sc_signal< sc_lv<31> > j_reg_152;
    sc_signal< sc_lv<31> > k_reg_163;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<38> > phi_mul_reg_174;
    sc_signal< sc_lv<64> > tmp_11_cast_fu_240_p1;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_273_p1;
    sc_signal< sc_lv<64> > tmp_14_cast_fu_289_p1;
    sc_signal< sc_lv<32> > i_cast_fu_201_p1;
    sc_signal< sc_lv<32> > j_cast_fu_216_p1;
    sc_signal< sc_lv<15> > tmp_s_fu_235_p2;
    sc_signal< sc_lv<32> > k_cast_fu_249_p1;
    sc_signal< sc_lv<15> > tmp_10_fu_264_p1;
    sc_signal< sc_lv<15> > tmp_11_fu_268_p2;
    sc_signal< sc_lv<15> > tmp_6_fu_245_p1;
    sc_signal< sc_lv<15> > tmp_12_fu_284_p2;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<38> ap_const_lv38_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<38> ap_const_lv38_64;
    static const sc_lv<31> ap_const_lv31_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_C_address0();
    void thread_C_ce0();
    void thread_C_d0();
    void thread_C_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_1_fu_210_p2();
    void thread_i_cast_fu_201_p1();
    void thread_j_1_fu_225_p2();
    void thread_j_cast_fu_216_p1();
    void thread_k_1_fu_258_p2();
    void thread_k_cast_fu_249_p1();
    void thread_next_mul2_fu_195_p2();
    void thread_next_mul_fu_278_p2();
    void thread_tmp_10_fu_264_p1();
    void thread_tmp_11_cast_fu_240_p1();
    void thread_tmp_11_fu_268_p2();
    void thread_tmp_12_cast_fu_273_p1();
    void thread_tmp_12_fu_284_p2();
    void thread_tmp_14_cast_fu_289_p1();
    void thread_tmp_1_fu_185_p1();
    void thread_tmp_2_fu_220_p2();
    void thread_tmp_3_fu_231_p1();
    void thread_tmp_5_fu_253_p2();
    void thread_tmp_6_fu_245_p1();
    void thread_tmp_7_fu_294_p2();
    void thread_tmp_fu_205_p2();
    void thread_tmp_s_fu_235_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif