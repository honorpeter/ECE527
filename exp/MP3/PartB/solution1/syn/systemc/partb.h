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

#include "partb_mac_muladd_bkb.h"
#include "partb_mul_mul_8nscud.h"
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
    partb_mac_muladd_bkb<1,1,8,15,15,15>* partb_mac_muladd_bkb_U1;
    partb_mac_muladd_bkb<1,1,8,15,15,15>* partb_mac_muladd_bkb_U2;
    partb_mul_mul_8nscud<1,1,8,15,15>* partb_mul_mul_8nscud_U3;
    partb_mac_muladd_bkb<1,1,8,15,15,15>* partb_mac_muladd_bkb_U4;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > indvar_flatten_reg_243;
    sc_signal< sc_lv<31> > i1_reg_254;
    sc_signal< sc_lv<31> > j2_reg_265;
    sc_signal< sc_lv<64> > indvar_flatten1_reg_276;
    sc_signal< sc_lv<31> > i3_reg_287;
    sc_signal< sc_lv<31> > j4_reg_298;
    sc_signal< sc_lv<32> > sum_reg_343;
    sc_signal< sc_lv<31> > k_reg_356;
    sc_signal< sc_lv<38> > phi_mul1_reg_367;
    sc_signal< sc_lv<64> > indvar_flatten3_reg_378;
    sc_signal< sc_lv<31> > i7_reg_389;
    sc_signal< sc_lv<31> > j8_reg_400;
    sc_signal< sc_lv<15> > tmp_1_fu_411_p1;
    sc_signal< sc_lv<15> > tmp_1_reg_852;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<38> > next_mul_fu_415_p2;
    sc_signal< sc_lv<38> > next_mul_reg_857;
    sc_signal< sc_lv<1> > tmp_fu_425_p2;
    sc_signal< sc_lv<31> > i_1_fu_430_p2;
    sc_signal< sc_lv<31> > i_1_reg_866;
    sc_signal< sc_lv<64> > bound_fu_442_p2;
    sc_signal< sc_lv<64> > bound_reg_871;
    sc_signal< sc_lv<31> > j_1_fu_457_p2;
    sc_signal< sc_lv<31> > j_1_reg_879;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_5_cast_fu_472_p1;
    sc_signal< sc_lv<64> > tmp_5_cast_reg_884;
    sc_signal< sc_lv<1> > tmp_2_fu_452_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_486_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_894;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_894_pp0_iter1_reg;
    sc_signal< sc_lv<64> > indvar_flatten_next_fu_491_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<31> > tmp_7_mid2_v_fu_511_p3;
    sc_signal< sc_lv<31> > tmp_7_mid2_v_reg_903;
    sc_signal< sc_lv<15> > tmp_4_fu_519_p1;
    sc_signal< sc_lv<15> > tmp_4_reg_908;
    sc_signal< sc_lv<15> > tmp_11_fu_523_p1;
    sc_signal< sc_lv<15> > tmp_11_reg_913;
    sc_signal< sc_lv<31> > j_2_fu_527_p2;
    sc_signal< sc_lv<64> > tmp_9_cast_fu_533_p1;
    sc_signal< sc_lv<64> > tmp_9_cast_reg_923;
    sc_signal< sc_lv<64> > bound4_fu_543_p2;
    sc_signal< sc_lv<64> > bound4_reg_933;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_558_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_940;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<64> > indvar_flatten_next1_fu_563_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<31> > tmp_5_mid2_v_fu_583_p3;
    sc_signal< sc_lv<31> > tmp_5_mid2_v_reg_949;
    sc_signal< sc_lv<15> > tmp_15_fu_591_p1;
    sc_signal< sc_lv<15> > tmp_15_reg_954;
    sc_signal< sc_lv<15> > tmp_19_fu_595_p1;
    sc_signal< sc_lv<15> > tmp_19_reg_959;
    sc_signal< sc_lv<31> > j_3_fu_599_p2;
    sc_signal< sc_lv<1> > tmp_12_fu_613_p2;
    sc_signal< sc_lv<1> > tmp_12_reg_969;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > exitcond_flatten2_fu_618_p2;
    sc_signal< sc_lv<64> > indvar_flatten_next3_fu_623_p2;
    sc_signal< sc_lv<64> > indvar_flatten_next3_reg_978;
    sc_signal< sc_lv<31> > tmp_12_mid2_v_fu_635_p3;
    sc_signal< sc_lv<31> > tmp_12_mid2_v_reg_983;
    sc_signal< sc_lv<15> > tmp_21_fu_643_p1;
    sc_signal< sc_lv<15> > tmp_21_reg_988;
    sc_signal< sc_lv<15> > tmp_13_fu_805_p2;
    sc_signal< sc_lv<15> > tmp_13_reg_993;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<31> > j6_mid2_fu_647_p3;
    sc_signal< sc_lv<31> > j6_mid2_reg_999;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<15> > tmp_26_fu_654_p1;
    sc_signal< sc_lv<15> > tmp_26_reg_1004;
    sc_signal< sc_lv<14> > C_i_addr_1_reg_1009;
    sc_signal< sc_lv<1> > tmp_17_fu_676_p2;
    sc_signal< sc_lv<1> > tmp_17_reg_1014;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< bool > ap_block_state15_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state16_pp2_stage0_iter1;
    sc_signal< bool > ap_block_state17_pp2_stage0_iter2;
    sc_signal< bool > ap_block_state18_pp2_stage0_iter3;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<1> > tmp_17_reg_1014_pp2_iter1_reg;
    sc_signal< sc_lv<1> > tmp_17_reg_1014_pp2_iter2_reg;
    sc_signal< sc_lv<31> > k_1_fu_681_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<38> > next_mul2_fu_701_p2;
    sc_signal< sc_lv<32> > A_i_q0;
    sc_signal< sc_lv<32> > A_i_load_reg_1038;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< sc_lv<32> > B_i_q0;
    sc_signal< sc_lv<32> > B_i_load_reg_1043;
    sc_signal< sc_lv<32> > tmp_20_fu_717_p2;
    sc_signal< sc_lv<32> > tmp_20_reg_1048;
    sc_signal< sc_lv<32> > sum_1_fu_721_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter3;
    sc_signal< sc_lv<31> > j_4_fu_726_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<1> > exitcond_flatten3_fu_740_p2;
    sc_signal< sc_lv<1> > exitcond_flatten3_reg_1063;
    sc_signal< sc_logic > ap_CS_fsm_pp3_stage0;
    sc_signal< bool > ap_block_state20_pp3_stage0_iter0;
    sc_signal< bool > ap_block_state21_pp3_stage0_iter1;
    sc_signal< bool > ap_block_state22_pp3_stage0_iter2;
    sc_signal< bool > ap_block_pp3_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten3_reg_1063_pp3_iter1_reg;
    sc_signal< sc_lv<64> > indvar_flatten_next2_fu_745_p2;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter0;
    sc_signal< sc_lv<31> > tmp_16_mid2_v_fu_765_p3;
    sc_signal< sc_lv<31> > tmp_16_mid2_v_reg_1072;
    sc_signal< sc_lv<15> > tmp_29_fu_773_p1;
    sc_signal< sc_lv<15> > tmp_29_reg_1077;
    sc_signal< sc_lv<15> > tmp_30_fu_777_p1;
    sc_signal< sc_lv<15> > tmp_30_reg_1082;
    sc_signal< sc_lv<31> > j_5_fu_781_p2;
    sc_signal< sc_lv<64> > tmp_23_cast_fu_787_p1;
    sc_signal< sc_lv<64> > tmp_23_cast_reg_1092;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state9;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state15;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter2;
    sc_signal< bool > ap_block_pp3_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp3_exit_iter0_state20;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter2;
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
    sc_signal< sc_lv<31> > i_reg_210;
    sc_signal< sc_lv<38> > phi_mul_reg_221;
    sc_signal< sc_lv<31> > j_reg_232;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<31> > ap_phi_mux_i1_phi_fu_258_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<31> > ap_phi_mux_i3_phi_fu_291_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<64> > indvar_flatten2_reg_309;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<31> > i5_reg_320;
    sc_signal< sc_lv<31> > j6_reg_331;
    sc_signal< sc_lv<31> > ap_phi_mux_i7_phi_fu_393_p4;
    sc_signal< bool > ap_block_pp3_stage0;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_605_p1;
    sc_signal< sc_lv<64> > tmp_16_cast_fu_663_p1;
    sc_signal< sc_lv<64> > tmp_25_cast_fu_696_p1;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<64> > tmp_27_cast_fu_712_p1;
    sc_signal< sc_lv<32> > i_cast_fu_421_p1;
    sc_signal< sc_lv<32> > bound_fu_442_p0;
    sc_signal< sc_lv<32> > bound_fu_442_p1;
    sc_signal< sc_lv<32> > j_cast_fu_448_p1;
    sc_signal< sc_lv<15> > tmp_3_fu_463_p1;
    sc_signal< sc_lv<15> > tmp_5_fu_467_p2;
    sc_signal< sc_lv<32> > j2_cast_fu_477_p1;
    sc_signal< sc_lv<1> > tmp_8_fu_481_p2;
    sc_signal< sc_lv<31> > i_2_fu_497_p2;
    sc_signal< sc_lv<31> > j2_mid2_fu_503_p3;
    sc_signal< sc_lv<15> > grp_fu_791_p3;
    sc_signal< sc_lv<32> > bound4_fu_543_p0;
    sc_signal< sc_lv<32> > bound4_fu_543_p1;
    sc_signal< sc_lv<32> > j4_cast_fu_549_p1;
    sc_signal< sc_lv<1> > tmp_6_fu_553_p2;
    sc_signal< sc_lv<31> > i_3_fu_569_p2;
    sc_signal< sc_lv<31> > j4_mid2_fu_575_p3;
    sc_signal< sc_lv<15> > grp_fu_798_p3;
    sc_signal< sc_lv<32> > j6_cast_fu_609_p1;
    sc_signal< sc_lv<31> > i_4_fu_629_p2;
    sc_signal< sc_lv<15> > tmp_14_fu_658_p2;
    sc_signal< sc_lv<32> > k_cast_fu_672_p1;
    sc_signal< sc_lv<15> > tmp_31_fu_687_p1;
    sc_signal< sc_lv<15> > tmp_24_fu_691_p2;
    sc_signal< sc_lv<15> > tmp_28_fu_668_p1;
    sc_signal< sc_lv<15> > tmp_25_fu_707_p2;
    sc_signal< sc_lv<32> > j8_cast_fu_731_p1;
    sc_signal< sc_lv<1> > tmp_16_fu_735_p2;
    sc_signal< sc_lv<31> > i_5_fu_751_p2;
    sc_signal< sc_lv<31> > j8_mid2_fu_757_p3;
    sc_signal< sc_lv<15> > grp_fu_810_p3;
    sc_signal< sc_lv<8> > grp_fu_791_p0;
    sc_signal< sc_lv<8> > grp_fu_798_p0;
    sc_signal< sc_lv<8> > tmp_13_fu_805_p0;
    sc_signal< sc_lv<8> > grp_fu_810_p0;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    sc_signal< sc_logic > ap_idle_pp3;
    sc_signal< sc_logic > ap_enable_pp3;
    sc_signal< sc_lv<64> > bound4_fu_543_p00;
    sc_signal< sc_lv<64> > bound4_fu_543_p10;
    sc_signal< sc_lv<64> > bound_fu_442_p00;
    sc_signal< sc_lv<64> > bound_fu_442_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_pp0_stage0;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_pp1_stage0;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_pp2_stage0;
    static const sc_lv<15> ap_ST_fsm_state19;
    static const sc_lv<15> ap_ST_fsm_pp3_stage0;
    static const sc_lv<15> ap_ST_fsm_state23;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<38> ap_const_lv38_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<38> ap_const_lv38_64;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<15> ap_const_lv15_64;
    static const sc_lv<32> ap_const_lv32_E;
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
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_pp3_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_pp3_stage0();
    void thread_ap_block_pp3_stage0_11001();
    void thread_ap_block_pp3_stage0_subdone();
    void thread_ap_block_state10_pp1_stage0_iter1();
    void thread_ap_block_state15_pp2_stage0_iter0();
    void thread_ap_block_state16_pp2_stage0_iter1();
    void thread_ap_block_state17_pp2_stage0_iter2();
    void thread_ap_block_state18_pp2_stage0_iter3();
    void thread_ap_block_state20_pp3_stage0_iter0();
    void thread_ap_block_state21_pp3_stage0_iter1();
    void thread_ap_block_state22_pp3_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage0_iter2();
    void thread_ap_block_state9_pp1_stage0_iter0();
    void thread_ap_condition_pp0_exit_iter0_state5();
    void thread_ap_condition_pp1_exit_iter0_state9();
    void thread_ap_condition_pp2_exit_iter0_state15();
    void thread_ap_condition_pp3_exit_iter0_state20();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_enable_pp3();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_idle_pp3();
    void thread_ap_phi_mux_i1_phi_fu_258_p4();
    void thread_ap_phi_mux_i3_phi_fu_291_p4();
    void thread_ap_phi_mux_i7_phi_fu_393_p4();
    void thread_ap_ready();
    void thread_bound4_fu_543_p0();
    void thread_bound4_fu_543_p00();
    void thread_bound4_fu_543_p1();
    void thread_bound4_fu_543_p10();
    void thread_bound4_fu_543_p2();
    void thread_bound_fu_442_p0();
    void thread_bound_fu_442_p00();
    void thread_bound_fu_442_p1();
    void thread_bound_fu_442_p10();
    void thread_bound_fu_442_p2();
    void thread_exitcond_flatten1_fu_558_p2();
    void thread_exitcond_flatten2_fu_618_p2();
    void thread_exitcond_flatten3_fu_740_p2();
    void thread_exitcond_flatten_fu_486_p2();
    void thread_grp_fu_791_p0();
    void thread_grp_fu_798_p0();
    void thread_grp_fu_810_p0();
    void thread_i_1_fu_430_p2();
    void thread_i_2_fu_497_p2();
    void thread_i_3_fu_569_p2();
    void thread_i_4_fu_629_p2();
    void thread_i_5_fu_751_p2();
    void thread_i_cast_fu_421_p1();
    void thread_indvar_flatten_next1_fu_563_p2();
    void thread_indvar_flatten_next2_fu_745_p2();
    void thread_indvar_flatten_next3_fu_623_p2();
    void thread_indvar_flatten_next_fu_491_p2();
    void thread_j2_cast_fu_477_p1();
    void thread_j2_mid2_fu_503_p3();
    void thread_j4_cast_fu_549_p1();
    void thread_j4_mid2_fu_575_p3();
    void thread_j6_cast_fu_609_p1();
    void thread_j6_mid2_fu_647_p3();
    void thread_j8_cast_fu_731_p1();
    void thread_j8_mid2_fu_757_p3();
    void thread_j_1_fu_457_p2();
    void thread_j_2_fu_527_p2();
    void thread_j_3_fu_599_p2();
    void thread_j_4_fu_726_p2();
    void thread_j_5_fu_781_p2();
    void thread_j_cast_fu_448_p1();
    void thread_k_1_fu_681_p2();
    void thread_k_cast_fu_672_p1();
    void thread_next_mul2_fu_701_p2();
    void thread_next_mul_fu_415_p2();
    void thread_sum_1_fu_721_p2();
    void thread_tmp_11_fu_523_p1();
    void thread_tmp_12_cast_fu_605_p1();
    void thread_tmp_12_fu_613_p2();
    void thread_tmp_12_mid2_v_fu_635_p3();
    void thread_tmp_13_fu_805_p0();
    void thread_tmp_14_fu_658_p2();
    void thread_tmp_15_fu_591_p1();
    void thread_tmp_16_cast_fu_663_p1();
    void thread_tmp_16_fu_735_p2();
    void thread_tmp_16_mid2_v_fu_765_p3();
    void thread_tmp_17_fu_676_p2();
    void thread_tmp_19_fu_595_p1();
    void thread_tmp_1_fu_411_p1();
    void thread_tmp_20_fu_717_p2();
    void thread_tmp_21_fu_643_p1();
    void thread_tmp_23_cast_fu_787_p1();
    void thread_tmp_24_fu_691_p2();
    void thread_tmp_25_cast_fu_696_p1();
    void thread_tmp_25_fu_707_p2();
    void thread_tmp_26_fu_654_p1();
    void thread_tmp_27_cast_fu_712_p1();
    void thread_tmp_28_fu_668_p1();
    void thread_tmp_29_fu_773_p1();
    void thread_tmp_2_fu_452_p2();
    void thread_tmp_30_fu_777_p1();
    void thread_tmp_31_fu_687_p1();
    void thread_tmp_3_fu_463_p1();
    void thread_tmp_4_fu_519_p1();
    void thread_tmp_5_cast_fu_472_p1();
    void thread_tmp_5_fu_467_p2();
    void thread_tmp_5_mid2_v_fu_583_p3();
    void thread_tmp_6_fu_553_p2();
    void thread_tmp_7_mid2_v_fu_511_p3();
    void thread_tmp_8_fu_481_p2();
    void thread_tmp_9_cast_fu_533_p1();
    void thread_tmp_fu_425_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
