// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _partb_HH_
#define _partb_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "partb_A_i.h"

namespace ap_rtl {

struct partb : public sc_module {
    // Port declarations 22
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
    sc_in< sc_lv<32> > mA;
    sc_in< sc_lv<32> > nA;
    sc_in< sc_lv<32> > mB;
    sc_in< sc_lv<32> > nB;
    sc_in< sc_lv<32> > mC;
    sc_in< sc_lv<32> > nC;


    // Module declarations
    partb(sc_module_name name);
    SC_HAS_PROCESS(partb);

    ~partb();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    partb_A_i* A_i_U;
    partb_A_i* B_i_U;
    partb_A_i* C_i_U;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > tmp_1_fu_404_p1;
    sc_signal< sc_lv<15> > tmp_1_reg_767;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<38> > next_mul_fu_408_p2;
    sc_signal< sc_lv<38> > next_mul_reg_772;
    sc_signal< sc_lv<31> > i_1_fu_423_p2;
    sc_signal< sc_lv<31> > i_1_reg_780;
    sc_signal< sc_lv<31> > j_1_fu_438_p2;
    sc_signal< sc_lv<31> > j_1_reg_788;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_24_cast_fu_453_p1;
    sc_signal< sc_lv<64> > tmp_24_cast_reg_793;
    sc_signal< sc_lv<1> > tmp_2_fu_433_p2;
    sc_signal< sc_lv<15> > tmp_4_fu_458_p1;
    sc_signal< sc_lv<15> > tmp_4_reg_803;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<38> > next_mul2_fu_462_p2;
    sc_signal< sc_lv<38> > next_mul2_reg_808;
    sc_signal< sc_lv<31> > i_2_fu_477_p2;
    sc_signal< sc_lv<31> > i_2_reg_816;
    sc_signal< sc_lv<31> > j_2_fu_492_p2;
    sc_signal< sc_lv<31> > j_2_reg_824;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_26_cast_fu_507_p1;
    sc_signal< sc_lv<64> > tmp_26_cast_reg_829;
    sc_signal< sc_lv<1> > tmp_8_fu_487_p2;
    sc_signal< sc_lv<15> > tmp_7_fu_512_p1;
    sc_signal< sc_lv<15> > tmp_7_reg_839;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<38> > next_mul4_fu_516_p2;
    sc_signal< sc_lv<38> > next_mul4_reg_844;
    sc_signal< sc_lv<31> > i_3_fu_531_p2;
    sc_signal< sc_lv<31> > i_3_reg_852;
    sc_signal< sc_lv<31> > j_3_fu_546_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<15> > tmp_15_fu_566_p1;
    sc_signal< sc_lv<15> > tmp_15_reg_865;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<38> > next_mul8_fu_570_p2;
    sc_signal< sc_lv<38> > next_mul8_reg_871;
    sc_signal< sc_lv<31> > i_4_fu_585_p2;
    sc_signal< sc_lv<31> > i_4_reg_879;
    sc_signal< sc_lv<31> > j_4_fu_600_p2;
    sc_signal< sc_lv<31> > j_4_reg_887;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<15> > tmp_23_fu_606_p1;
    sc_signal< sc_lv<15> > tmp_23_reg_892;
    sc_signal< sc_lv<1> > tmp_13_fu_595_p2;
    sc_signal< sc_lv<14> > C_i_addr_1_reg_897;
    sc_signal< sc_lv<31> > k_1_fu_633_p2;
    sc_signal< sc_lv<31> > k_1_reg_905;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > tmp_17_fu_628_p2;
    sc_signal< sc_lv<38> > next_mul6_fu_653_p2;
    sc_signal< sc_lv<38> > next_mul6_reg_915;
    sc_signal< sc_lv<32> > A_i_q0;
    sc_signal< sc_lv<32> > A_i_load_reg_925;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > B_i_q0;
    sc_signal< sc_lv<32> > B_i_load_reg_930;
    sc_signal< sc_lv<32> > tmp_20_fu_669_p2;
    sc_signal< sc_lv<32> > tmp_20_reg_935;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > sum_1_fu_673_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<15> > tmp_22_fu_678_p1;
    sc_signal< sc_lv<15> > tmp_22_reg_945;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<38> > next_mul1_fu_682_p2;
    sc_signal< sc_lv<38> > next_mul1_reg_950;
    sc_signal< sc_lv<31> > i_5_fu_697_p2;
    sc_signal< sc_lv<31> > i_5_reg_958;
    sc_signal< sc_lv<31> > j_5_fu_712_p2;
    sc_signal< sc_lv<31> > j_5_reg_966;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<64> > tmp_35_cast_fu_727_p1;
    sc_signal< sc_lv<64> > tmp_35_cast_reg_971;
    sc_signal< sc_lv<1> > tmp_18_fu_707_p2;
    sc_signal< sc_lv<14> > A_i_address0;
    sc_signal< sc_logic > A_i_ce0;
    sc_signal< sc_logic > A_i_we0;
    sc_signal< sc_lv<14> > B_i_address0;
    sc_signal< sc_logic > B_i_ce0;
    sc_signal< sc_logic > B_i_we0;
    sc_signal< sc_lv<14> > C_i_address0;
    sc_signal< sc_logic > C_i_ce0;
    sc_signal< sc_logic > C_i_we0;
    sc_signal< sc_lv<32> > C_i_d0;
    sc_signal< sc_lv<32> > C_i_q0;
    sc_signal< sc_lv<31> > i_reg_204;
    sc_signal< sc_lv<38> > phi_mul_reg_215;
    sc_signal< sc_lv<31> > j_reg_226;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_fu_418_p2;
    sc_signal< sc_lv<31> > i1_reg_237;
    sc_signal< sc_lv<38> > phi_mul1_reg_248;
    sc_signal< sc_lv<31> > j2_reg_259;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > tmp_3_fu_472_p2;
    sc_signal< sc_lv<31> > i3_reg_270;
    sc_signal< sc_lv<1> > tmp_6_fu_541_p2;
    sc_signal< sc_lv<38> > phi_mul3_reg_281;
    sc_signal< sc_lv<31> > j4_reg_292;
    sc_signal< sc_lv<1> > tmp_9_fu_526_p2;
    sc_signal< sc_lv<31> > i5_reg_303;
    sc_signal< sc_lv<38> > phi_mul7_reg_314;
    sc_signal< sc_lv<31> > j6_reg_325;
    sc_signal< sc_lv<1> > tmp_10_fu_580_p2;
    sc_signal< sc_lv<32> > sum_reg_336;
    sc_signal< sc_lv<31> > k_reg_349;
    sc_signal< sc_lv<38> > phi_mul5_reg_360;
    sc_signal< sc_lv<31> > i7_reg_371;
    sc_signal< sc_lv<38> > phi_mul9_reg_382;
    sc_signal< sc_lv<31> > j8_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<1> > tmp_14_fu_692_p2;
    sc_signal< sc_lv<64> > tmp_28_cast_fu_561_p1;
    sc_signal< sc_lv<64> > tmp_30_cast_fu_615_p1;
    sc_signal< sc_lv<64> > tmp_32_cast_fu_648_p1;
    sc_signal< sc_lv<64> > tmp_34_cast_fu_664_p1;
    sc_signal< sc_lv<32> > i_cast_fu_414_p1;
    sc_signal< sc_lv<32> > j_cast_fu_429_p1;
    sc_signal< sc_lv<15> > tmp_5_fu_444_p1;
    sc_signal< sc_lv<15> > tmp_s_fu_448_p2;
    sc_signal< sc_lv<32> > i1_cast_fu_468_p1;
    sc_signal< sc_lv<32> > j2_cast_fu_483_p1;
    sc_signal< sc_lv<15> > tmp_11_fu_498_p1;
    sc_signal< sc_lv<15> > tmp_12_fu_502_p2;
    sc_signal< sc_lv<32> > i3_cast_fu_522_p1;
    sc_signal< sc_lv<32> > j4_cast_fu_537_p1;
    sc_signal< sc_lv<15> > tmp_16_fu_552_p1;
    sc_signal< sc_lv<15> > tmp_19_fu_556_p2;
    sc_signal< sc_lv<32> > i5_cast_fu_576_p1;
    sc_signal< sc_lv<32> > j6_cast_fu_591_p1;
    sc_signal< sc_lv<15> > tmp_24_fu_610_p2;
    sc_signal< sc_lv<32> > k_cast_fu_624_p1;
    sc_signal< sc_lv<15> > tmp_26_fu_639_p1;
    sc_signal< sc_lv<15> > tmp_27_fu_643_p2;
    sc_signal< sc_lv<15> > tmp_25_fu_620_p1;
    sc_signal< sc_lv<15> > tmp_28_fu_659_p2;
    sc_signal< sc_lv<32> > i7_cast_fu_688_p1;
    sc_signal< sc_lv<32> > j8_cast_fu_703_p1;
    sc_signal< sc_lv<15> > tmp_29_fu_718_p1;
    sc_signal< sc_lv<15> > tmp_30_fu_722_p2;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_state2;
    static const sc_lv<18> ap_ST_fsm_state3;
    static const sc_lv<18> ap_ST_fsm_state4;
    static const sc_lv<18> ap_ST_fsm_state5;
    static const sc_lv<18> ap_ST_fsm_state6;
    static const sc_lv<18> ap_ST_fsm_state7;
    static const sc_lv<18> ap_ST_fsm_state8;
    static const sc_lv<18> ap_ST_fsm_state9;
    static const sc_lv<18> ap_ST_fsm_state10;
    static const sc_lv<18> ap_ST_fsm_state11;
    static const sc_lv<18> ap_ST_fsm_state12;
    static const sc_lv<18> ap_ST_fsm_state13;
    static const sc_lv<18> ap_ST_fsm_state14;
    static const sc_lv<18> ap_ST_fsm_state15;
    static const sc_lv<18> ap_ST_fsm_state16;
    static const sc_lv<18> ap_ST_fsm_state17;
    static const sc_lv<18> ap_ST_fsm_state18;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<38> ap_const_lv38_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<38> ap_const_lv38_64;
    static const sc_lv<31> ap_const_lv31_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_ce0();
    void thread_A_i_address0();
    void thread_A_i_ce0();
    void thread_A_i_we0();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_B_i_address0();
    void thread_B_i_ce0();
    void thread_B_i_we0();
    void thread_C_address0();
    void thread_C_ce0();
    void thread_C_d0();
    void thread_C_i_address0();
    void thread_C_i_ce0();
    void thread_C_i_d0();
    void thread_C_i_we0();
    void thread_C_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i1_cast_fu_468_p1();
    void thread_i3_cast_fu_522_p1();
    void thread_i5_cast_fu_576_p1();
    void thread_i7_cast_fu_688_p1();
    void thread_i_1_fu_423_p2();
    void thread_i_2_fu_477_p2();
    void thread_i_3_fu_531_p2();
    void thread_i_4_fu_585_p2();
    void thread_i_5_fu_697_p2();
    void thread_i_cast_fu_414_p1();
    void thread_j2_cast_fu_483_p1();
    void thread_j4_cast_fu_537_p1();
    void thread_j6_cast_fu_591_p1();
    void thread_j8_cast_fu_703_p1();
    void thread_j_1_fu_438_p2();
    void thread_j_2_fu_492_p2();
    void thread_j_3_fu_546_p2();
    void thread_j_4_fu_600_p2();
    void thread_j_5_fu_712_p2();
    void thread_j_cast_fu_429_p1();
    void thread_k_1_fu_633_p2();
    void thread_k_cast_fu_624_p1();
    void thread_next_mul1_fu_682_p2();
    void thread_next_mul2_fu_462_p2();
    void thread_next_mul4_fu_516_p2();
    void thread_next_mul6_fu_653_p2();
    void thread_next_mul8_fu_570_p2();
    void thread_next_mul_fu_408_p2();
    void thread_sum_1_fu_673_p2();
    void thread_tmp_10_fu_580_p2();
    void thread_tmp_11_fu_498_p1();
    void thread_tmp_12_fu_502_p2();
    void thread_tmp_13_fu_595_p2();
    void thread_tmp_14_fu_692_p2();
    void thread_tmp_15_fu_566_p1();
    void thread_tmp_16_fu_552_p1();
    void thread_tmp_17_fu_628_p2();
    void thread_tmp_18_fu_707_p2();
    void thread_tmp_19_fu_556_p2();
    void thread_tmp_1_fu_404_p1();
    void thread_tmp_20_fu_669_p2();
    void thread_tmp_22_fu_678_p1();
    void thread_tmp_23_fu_606_p1();
    void thread_tmp_24_cast_fu_453_p1();
    void thread_tmp_24_fu_610_p2();
    void thread_tmp_25_fu_620_p1();
    void thread_tmp_26_cast_fu_507_p1();
    void thread_tmp_26_fu_639_p1();
    void thread_tmp_27_fu_643_p2();
    void thread_tmp_28_cast_fu_561_p1();
    void thread_tmp_28_fu_659_p2();
    void thread_tmp_29_fu_718_p1();
    void thread_tmp_2_fu_433_p2();
    void thread_tmp_30_cast_fu_615_p1();
    void thread_tmp_30_fu_722_p2();
    void thread_tmp_32_cast_fu_648_p1();
    void thread_tmp_34_cast_fu_664_p1();
    void thread_tmp_35_cast_fu_727_p1();
    void thread_tmp_3_fu_472_p2();
    void thread_tmp_4_fu_458_p1();
    void thread_tmp_5_fu_444_p1();
    void thread_tmp_6_fu_541_p2();
    void thread_tmp_7_fu_512_p1();
    void thread_tmp_8_fu_487_p2();
    void thread_tmp_9_fu_526_p2();
    void thread_tmp_fu_418_p2();
    void thread_tmp_s_fu_448_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
