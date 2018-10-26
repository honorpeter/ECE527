// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _store_weights_5_HH_
#define _store_weights_5_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct store_weights_5 : public sc_module {
    // Port declarations 56
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_weights_AWVALID;
    sc_in< sc_logic > m_axi_weights_AWREADY;
    sc_out< sc_lv<32> > m_axi_weights_AWADDR;
    sc_out< sc_lv<1> > m_axi_weights_AWID;
    sc_out< sc_lv<32> > m_axi_weights_AWLEN;
    sc_out< sc_lv<3> > m_axi_weights_AWSIZE;
    sc_out< sc_lv<2> > m_axi_weights_AWBURST;
    sc_out< sc_lv<2> > m_axi_weights_AWLOCK;
    sc_out< sc_lv<4> > m_axi_weights_AWCACHE;
    sc_out< sc_lv<3> > m_axi_weights_AWPROT;
    sc_out< sc_lv<4> > m_axi_weights_AWQOS;
    sc_out< sc_lv<4> > m_axi_weights_AWREGION;
    sc_out< sc_lv<1> > m_axi_weights_AWUSER;
    sc_out< sc_logic > m_axi_weights_WVALID;
    sc_in< sc_logic > m_axi_weights_WREADY;
    sc_out< sc_lv<32> > m_axi_weights_WDATA;
    sc_out< sc_lv<4> > m_axi_weights_WSTRB;
    sc_out< sc_logic > m_axi_weights_WLAST;
    sc_out< sc_lv<1> > m_axi_weights_WID;
    sc_out< sc_lv<1> > m_axi_weights_WUSER;
    sc_out< sc_logic > m_axi_weights_ARVALID;
    sc_in< sc_logic > m_axi_weights_ARREADY;
    sc_out< sc_lv<32> > m_axi_weights_ARADDR;
    sc_out< sc_lv<1> > m_axi_weights_ARID;
    sc_out< sc_lv<32> > m_axi_weights_ARLEN;
    sc_out< sc_lv<3> > m_axi_weights_ARSIZE;
    sc_out< sc_lv<2> > m_axi_weights_ARBURST;
    sc_out< sc_lv<2> > m_axi_weights_ARLOCK;
    sc_out< sc_lv<4> > m_axi_weights_ARCACHE;
    sc_out< sc_lv<3> > m_axi_weights_ARPROT;
    sc_out< sc_lv<4> > m_axi_weights_ARQOS;
    sc_out< sc_lv<4> > m_axi_weights_ARREGION;
    sc_out< sc_lv<1> > m_axi_weights_ARUSER;
    sc_in< sc_logic > m_axi_weights_RVALID;
    sc_out< sc_logic > m_axi_weights_RREADY;
    sc_in< sc_lv<32> > m_axi_weights_RDATA;
    sc_in< sc_logic > m_axi_weights_RLAST;
    sc_in< sc_lv<1> > m_axi_weights_RID;
    sc_in< sc_lv<1> > m_axi_weights_RUSER;
    sc_in< sc_lv<2> > m_axi_weights_RRESP;
    sc_in< sc_logic > m_axi_weights_BVALID;
    sc_out< sc_logic > m_axi_weights_BREADY;
    sc_in< sc_lv<2> > m_axi_weights_BRESP;
    sc_in< sc_lv<1> > m_axi_weights_BID;
    sc_in< sc_lv<1> > m_axi_weights_BUSER;
    sc_in< sc_lv<30> > weights_offset;
    sc_out< sc_lv<16> > weights_oc_address0;
    sc_out< sc_logic > weights_oc_ce0;
    sc_out< sc_logic > weights_oc_we0;
    sc_out< sc_lv<32> > weights_oc_d0;


    // Module declarations
    store_weights_5(sc_module_name name);
    SC_HAS_PROCESS(store_weights_5);

    ~store_weights_5();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > weights_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > weights_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > exitcond_fu_258_p2;
    sc_signal< sc_lv<64> > sext_fu_143_p1;
    sc_signal< sc_lv<64> > sext_reg_279;
    sc_signal< sc_lv<7> > i_1_fu_153_p2;
    sc_signal< sc_lv<7> > i_1_reg_287;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<12> > tmp_1_cast_fu_167_p1;
    sc_signal< sc_lv<12> > tmp_1_cast_reg_292;
    sc_signal< sc_lv<1> > exitcond3_fu_147_p2;
    sc_signal< sc_lv<5> > l_1_fu_177_p2;
    sc_signal< sc_lv<5> > l_1_reg_300;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > tmp_7_fu_208_p2;
    sc_signal< sc_lv<64> > tmp_7_reg_305;
    sc_signal< sc_lv<1> > exitcond2_fu_171_p2;
    sc_signal< sc_lv<3> > j_1_fu_220_p2;
    sc_signal< sc_lv<3> > j_1_reg_313;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > tmp_s_fu_241_p2;
    sc_signal< sc_lv<64> > tmp_s_reg_318;
    sc_signal< sc_lv<1> > exitcond1_fu_214_p2;
    sc_signal< sc_lv<32> > weights_addr_reg_323;
    sc_signal< sc_lv<3> > k_1_fu_264_p2;
    sc_signal< sc_lv<3> > k_1_reg_332;
    sc_signal< bool > ap_block_state12;
    sc_signal< sc_lv<64> > tmp_9_fu_274_p2;
    sc_signal< sc_lv<64> > tmp_9_reg_337;
    sc_signal< sc_lv<32> > weights_addr_read_reg_342;
    sc_signal< sc_lv<7> > i_reg_99;
    sc_signal< sc_lv<5> > l_reg_110;
    sc_signal< sc_lv<3> > j_reg_121;
    sc_signal< sc_lv<3> > k_reg_132;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > tmp_5_fu_247_p2;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_weights_ARREADY;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_weights_ARREADY;
    sc_signal< sc_lv<11> > tmp_fu_159_p3;
    sc_signal< sc_lv<12> > tmp_2_cast_fu_183_p1;
    sc_signal< sc_lv<12> > tmp_3_fu_187_p2;
    sc_signal< sc_lv<14> > tmp_1_fu_196_p3;
    sc_signal< sc_lv<64> > tmp_3_cast_fu_192_p1;
    sc_signal< sc_lv<64> > p_shl_fu_204_p1;
    sc_signal< sc_lv<64> > tmp_4_fu_226_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_230_p2;
    sc_signal< sc_lv<64> > tmp_2_fu_235_p2;
    sc_signal< sc_lv<64> > tmp_6_fu_270_p1;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_state12();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_weights_ARREADY();
    void thread_exitcond1_fu_214_p2();
    void thread_exitcond2_fu_171_p2();
    void thread_exitcond3_fu_147_p2();
    void thread_exitcond_fu_258_p2();
    void thread_i_1_fu_153_p2();
    void thread_j_1_fu_220_p2();
    void thread_k_1_fu_264_p2();
    void thread_l_1_fu_177_p2();
    void thread_m_axi_weights_ARADDR();
    void thread_m_axi_weights_ARBURST();
    void thread_m_axi_weights_ARCACHE();
    void thread_m_axi_weights_ARID();
    void thread_m_axi_weights_ARLEN();
    void thread_m_axi_weights_ARLOCK();
    void thread_m_axi_weights_ARPROT();
    void thread_m_axi_weights_ARQOS();
    void thread_m_axi_weights_ARREGION();
    void thread_m_axi_weights_ARSIZE();
    void thread_m_axi_weights_ARUSER();
    void thread_m_axi_weights_ARVALID();
    void thread_m_axi_weights_AWADDR();
    void thread_m_axi_weights_AWBURST();
    void thread_m_axi_weights_AWCACHE();
    void thread_m_axi_weights_AWID();
    void thread_m_axi_weights_AWLEN();
    void thread_m_axi_weights_AWLOCK();
    void thread_m_axi_weights_AWPROT();
    void thread_m_axi_weights_AWQOS();
    void thread_m_axi_weights_AWREGION();
    void thread_m_axi_weights_AWSIZE();
    void thread_m_axi_weights_AWUSER();
    void thread_m_axi_weights_AWVALID();
    void thread_m_axi_weights_BREADY();
    void thread_m_axi_weights_RREADY();
    void thread_m_axi_weights_WDATA();
    void thread_m_axi_weights_WID();
    void thread_m_axi_weights_WLAST();
    void thread_m_axi_weights_WSTRB();
    void thread_m_axi_weights_WUSER();
    void thread_m_axi_weights_WVALID();
    void thread_p_shl_fu_204_p1();
    void thread_sext_fu_143_p1();
    void thread_tmp_1_cast_fu_167_p1();
    void thread_tmp_1_fu_196_p3();
    void thread_tmp_2_cast_fu_183_p1();
    void thread_tmp_2_fu_235_p2();
    void thread_tmp_3_cast_fu_192_p1();
    void thread_tmp_3_fu_187_p2();
    void thread_tmp_4_fu_226_p1();
    void thread_tmp_5_fu_247_p2();
    void thread_tmp_6_fu_270_p1();
    void thread_tmp_7_fu_208_p2();
    void thread_tmp_8_fu_230_p2();
    void thread_tmp_9_fu_274_p2();
    void thread_tmp_fu_159_p3();
    void thread_tmp_s_fu_241_p2();
    void thread_weights_blk_n_AR();
    void thread_weights_blk_n_R();
    void thread_weights_oc_address0();
    void thread_weights_oc_ce0();
    void thread_weights_oc_d0();
    void thread_weights_oc_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif