-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity parta1_6 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    B_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    B_ce0 : OUT STD_LOGIC;
    B_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    C_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    C_ce0 : OUT STD_LOGIC;
    C_we0 : OUT STD_LOGIC;
    C_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    C_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    mA : IN STD_LOGIC_VECTOR (31 downto 0);
    nA : IN STD_LOGIC_VECTOR (31 downto 0);
    mB : IN STD_LOGIC_VECTOR (31 downto 0);
    nB : IN STD_LOGIC_VECTOR (31 downto 0);
    mC : IN STD_LOGIC_VECTOR (31 downto 0);
    nC : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of parta1_6 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "parta1_6,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=689,HLS_SYN_LUT=1160,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv38_0 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000000000000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv38_64 : STD_LOGIC_VECTOR (37 downto 0) := "00000000000000000000000000000001100100";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_FFFFFFFD : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111101";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal reg_259 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal reg_263 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_267_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_273 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal tmp_1_fu_277_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_1_reg_610 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal next_mul2_fu_287_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal next_mul2_reg_619 : STD_LOGIC_VECTOR (37 downto 0);
    signal i_1_fu_302_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_1_reg_627 : STD_LOGIC_VECTOR (30 downto 0);
    signal tmp_fu_297_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_308_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_3_reg_636 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal next_mul_fu_317_p2 : STD_LOGIC_VECTOR (37 downto 0);
    signal next_mul_reg_644 : STD_LOGIC_VECTOR (37 downto 0);
    signal j_1_fu_332_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal j_1_reg_652 : STD_LOGIC_VECTOR (30 downto 0);
    signal C_addr_1_reg_657 : STD_LOGIC_VECTOR (13 downto 0);
    signal tmp_2_fu_327_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_22_fu_419_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_22_reg_662 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_fu_427_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_reg_667 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal C_load_reg_681 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_456_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_686 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal tmp_5_1_fu_468_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_1_reg_691 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_8_1_fu_497_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_1_reg_705 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_5_2_fu_509_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_2_reg_710 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_2_reg_724 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal tmp_8_2_fu_538_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_2_reg_729 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal tmp_5_3_fu_549_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_1_3_fu_578_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_1_3_reg_747 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_203 : STD_LOGIC_VECTOR (30 downto 0);
    signal phi_mul1_reg_214 : STD_LOGIC_VECTOR (37 downto 0);
    signal j_reg_225 : STD_LOGIC_VECTOR (30 downto 0);
    signal phi_mul_reg_236 : STD_LOGIC_VECTOR (37 downto 0);
    signal k_reg_247 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state16 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state16 : signal is "none";
    signal tmp_11_cast_fu_347_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_cast_fu_441_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_13_cast_fu_451_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_14_cast_fu_482_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_15_cast_fu_492_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_16_cast_fu_523_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_17_cast_fu_533_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_18_cast_fu_563_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_19_cast_fu_573_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_8_3_fu_584_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast_fu_293_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_cast_fu_323_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_338_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_s_fu_342_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal nA_op_op_fu_359_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_neg_fu_372_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_lshr_fu_377_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_10_fu_364_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_neg_t_fu_387_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_11_fu_393_p4 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_9_fu_352_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_20_fu_403_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_21_fu_411_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_24_fu_432_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_12_fu_436_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_13_fu_446_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_s_fu_462_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_25_fu_473_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_14_fu_477_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_15_fu_487_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_1_fu_503_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_26_fu_514_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_16_fu_518_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_17_fu_528_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal k_1_2_fu_543_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_27_fu_554_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_18_fu_558_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_19_fu_568_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_203_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_327_p2 = ap_const_lv1_0))) then 
                i_reg_203 <= i_1_reg_627;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_203 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    j_reg_225_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and ((tmp_5_3_fu_549_p2 = ap_const_lv1_0) or (tmp_5_2_reg_710 = ap_const_lv1_0) or (tmp_5_1_reg_691 = ap_const_lv1_0) or (tmp_23_reg_667 = ap_const_lv1_1)))) then 
                j_reg_225 <= j_1_reg_652;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_297_p2 = ap_const_lv1_1))) then 
                j_reg_225 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    k_reg_247_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
                k_reg_247 <= k_1_3_reg_747;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_327_p2 = ap_const_lv1_1))) then 
                k_reg_247 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    phi_mul1_reg_214_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_327_p2 = ap_const_lv1_0))) then 
                phi_mul1_reg_214 <= next_mul2_reg_619;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                phi_mul1_reg_214 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_236_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and ((tmp_5_3_fu_549_p2 = ap_const_lv1_0) or (tmp_5_2_reg_710 = ap_const_lv1_0) or (tmp_5_1_reg_691 = ap_const_lv1_0) or (tmp_23_reg_667 = ap_const_lv1_1)))) then 
                phi_mul_reg_236 <= next_mul_reg_644;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_297_p2 = ap_const_lv1_1))) then 
                phi_mul_reg_236 <= ap_const_lv38_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_327_p2 = ap_const_lv1_1))) then
                C_addr_1_reg_657 <= tmp_11_cast_fu_347_p1(14 - 1 downto 0);
                    tmp_22_reg_662(31 downto 2) <= tmp_22_fu_419_p3(31 downto 2);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                C_load_reg_681 <= C_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_1_reg_627 <= i_1_fu_302_p2;
                next_mul2_reg_619 <= next_mul2_fu_287_p2;
                tmp_1_reg_610 <= tmp_1_fu_277_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_652 <= j_1_fu_332_p2;
                next_mul_reg_644 <= next_mul_fu_317_p2;
                tmp_3_reg_636 <= tmp_3_fu_308_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and (tmp_23_reg_667 = ap_const_lv1_0) and (tmp_5_3_fu_549_p2 = ap_const_lv1_1) and (tmp_5_2_reg_710 = ap_const_lv1_1) and (tmp_5_1_reg_691 = ap_const_lv1_1))) then
                k_1_3_reg_747 <= k_1_3_fu_578_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state5))) then
                reg_259 <= A_q0;
                reg_263 <= B_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state15))) then
                reg_273 <= grp_fu_267_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                tmp_23_reg_667 <= tmp_23_fu_427_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                tmp_5_1_reg_691 <= tmp_5_1_fu_468_p2;
                tmp_8_reg_686 <= tmp_8_fu_456_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                tmp_5_2_reg_710 <= tmp_5_2_fu_509_p2;
                tmp_8_1_reg_705 <= tmp_8_1_fu_497_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                tmp_7_2_reg_724 <= grp_fu_267_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) and (tmp_23_reg_667 = ap_const_lv1_0) and (tmp_5_2_reg_710 = ap_const_lv1_1) and (tmp_5_1_reg_691 = ap_const_lv1_1))) then
                tmp_8_2_reg_729 <= tmp_8_2_fu_538_p2;
            end if;
        end if;
    end process;
    tmp_22_reg_662(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_297_p2, ap_CS_fsm_state3, tmp_2_fu_327_p2, tmp_23_fu_427_p2, tmp_23_reg_667, ap_CS_fsm_state4, ap_CS_fsm_state7, tmp_5_1_fu_468_p2, tmp_5_1_reg_691, ap_CS_fsm_state10, tmp_5_2_fu_509_p2, tmp_5_2_reg_710, ap_CS_fsm_state13, tmp_5_3_fu_549_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_297_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_2_fu_327_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (tmp_23_fu_427_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (tmp_5_1_fu_468_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state10) and (tmp_5_2_fu_509_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state13) and ((tmp_5_3_fu_549_p2 = ap_const_lv1_0) or (tmp_5_2_reg_710 = ap_const_lv1_0) or (tmp_5_1_reg_691 = ap_const_lv1_0) or (tmp_23_reg_667 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state14;
                end if;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;

    A_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13, tmp_12_cast_fu_441_p1, tmp_14_cast_fu_482_p1, tmp_16_cast_fu_523_p1, tmp_18_cast_fu_563_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            A_address0 <= tmp_18_cast_fu_563_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            A_address0 <= tmp_16_cast_fu_523_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            A_address0 <= tmp_14_cast_fu_482_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            A_address0 <= tmp_12_cast_fu_441_p1(14 - 1 downto 0);
        else 
            A_address0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    A_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    B_address0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13, tmp_13_cast_fu_451_p1, tmp_15_cast_fu_492_p1, tmp_17_cast_fu_533_p1, tmp_19_cast_fu_573_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            B_address0 <= tmp_19_cast_fu_573_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            B_address0 <= tmp_17_cast_fu_533_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            B_address0 <= tmp_15_cast_fu_492_p1(14 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            B_address0 <= tmp_13_cast_fu_451_p1(14 - 1 downto 0);
        else 
            B_address0 <= "XXXXXXXXXXXXXX";
        end if; 
    end process;


    B_ce0_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_address0 <= C_addr_1_reg_657;

    C_ce0_assign_proc : process(ap_CS_fsm_state5, ap_CS_fsm_state7, ap_CS_fsm_state10, ap_CS_fsm_state13, ap_CS_fsm_state16)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state16) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    C_d0_assign_proc : process(tmp_8_fu_456_p2, ap_CS_fsm_state7, tmp_8_1_fu_497_p2, ap_CS_fsm_state10, tmp_8_2_fu_538_p2, ap_CS_fsm_state13, ap_CS_fsm_state16, tmp_8_3_fu_584_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state16)) then 
            C_d0 <= tmp_8_3_fu_584_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            C_d0 <= tmp_8_2_fu_538_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            C_d0 <= tmp_8_1_fu_497_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            C_d0 <= tmp_8_fu_456_p2;
        else 
            C_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    C_we0_assign_proc : process(tmp_23_reg_667, ap_CS_fsm_state7, tmp_5_1_reg_691, ap_CS_fsm_state10, tmp_5_2_reg_710, ap_CS_fsm_state13, ap_CS_fsm_state16)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state16) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state7) or ((ap_const_logic_1 = ap_CS_fsm_state13) and (tmp_23_reg_667 = ap_const_lv1_0) and (tmp_5_2_reg_710 = ap_const_lv1_1) and (tmp_5_1_reg_691 = ap_const_lv1_1)))) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state16 <= ap_CS_fsm(15);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_CS_fsm_state2, tmp_fu_297_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_297_p2 = ap_const_lv1_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_297_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_297_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_267_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(reg_263) * signed(reg_259))), 32));
    i_1_fu_302_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(i_reg_203));
    i_cast_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_203),32));
    j_1_fu_332_p2 <= std_logic_vector(unsigned(ap_const_lv31_1) + unsigned(j_reg_225));
    j_cast_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_225),32));
    k_1_1_fu_503_p2 <= (k_reg_247 or ap_const_lv32_2);
    k_1_2_fu_543_p2 <= (k_reg_247 or ap_const_lv32_3);
    k_1_3_fu_578_p2 <= std_logic_vector(unsigned(ap_const_lv32_4) + unsigned(k_reg_247));
    k_1_s_fu_462_p2 <= (k_reg_247 or ap_const_lv32_1);
    nA_op_op_fu_359_p2 <= std_logic_vector(unsigned(ap_const_lv32_3) + unsigned(nA));
    next_mul2_fu_287_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul1_reg_214));
    next_mul_fu_317_p2 <= std_logic_vector(unsigned(ap_const_lv38_64) + unsigned(phi_mul_reg_236));
    p_lshr_fu_377_p4 <= p_neg_fu_372_p2(31 downto 2);
    p_neg_fu_372_p2 <= std_logic_vector(signed(ap_const_lv32_FFFFFFFD) - signed(nA));
    p_neg_t_fu_387_p2 <= std_logic_vector(unsigned(ap_const_lv30_0) - unsigned(p_lshr_fu_377_p4));
    tmp_10_fu_364_p3 <= nA_op_op_fu_359_p2(31 downto 31);
    tmp_11_cast_fu_347_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_342_p2),64));
    tmp_11_fu_393_p4 <= nA_op_op_fu_359_p2(31 downto 2);
    tmp_12_cast_fu_441_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_12_fu_436_p2),64));
    tmp_12_fu_436_p2 <= std_logic_vector(unsigned(tmp_1_reg_610) + unsigned(tmp_24_fu_432_p1));
    tmp_13_cast_fu_451_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_13_fu_446_p2),64));
    tmp_13_fu_446_p2 <= std_logic_vector(unsigned(tmp_3_reg_636) + unsigned(tmp_24_fu_432_p1));
    tmp_14_cast_fu_482_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_14_fu_477_p2),64));
    tmp_14_fu_477_p2 <= std_logic_vector(unsigned(tmp_1_reg_610) + unsigned(tmp_25_fu_473_p1));
    tmp_15_cast_fu_492_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_15_fu_487_p2),64));
    tmp_15_fu_487_p2 <= std_logic_vector(unsigned(tmp_3_reg_636) + unsigned(tmp_25_fu_473_p1));
    tmp_16_cast_fu_523_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_16_fu_518_p2),64));
    tmp_16_fu_518_p2 <= std_logic_vector(unsigned(tmp_1_reg_610) + unsigned(tmp_26_fu_514_p1));
    tmp_17_cast_fu_533_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_17_fu_528_p2),64));
    tmp_17_fu_528_p2 <= std_logic_vector(unsigned(tmp_3_reg_636) + unsigned(tmp_26_fu_514_p1));
    tmp_18_cast_fu_563_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_18_fu_558_p2),64));
    tmp_18_fu_558_p2 <= std_logic_vector(unsigned(tmp_1_reg_610) + unsigned(tmp_27_fu_554_p1));
    tmp_19_cast_fu_573_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_19_fu_568_p2),64));
    tmp_19_fu_568_p2 <= std_logic_vector(unsigned(tmp_3_reg_636) + unsigned(tmp_27_fu_554_p1));
    tmp_1_fu_277_p1 <= phi_mul1_reg_214(15 - 1 downto 0);
    tmp_20_fu_403_p3 <= 
        p_neg_t_fu_387_p2 when (tmp_10_fu_364_p3(0) = '1') else 
        tmp_11_fu_393_p4;
    tmp_21_fu_411_p3 <= 
        ap_const_lv30_0 when (tmp_9_fu_352_p3(0) = '1') else 
        tmp_20_fu_403_p3;
    tmp_22_fu_419_p3 <= (tmp_21_fu_411_p3 & ap_const_lv2_0);
    tmp_23_fu_427_p2 <= "1" when (k_reg_247 = tmp_22_reg_662) else "0";
    tmp_24_fu_432_p1 <= k_reg_247(15 - 1 downto 0);
    tmp_25_fu_473_p1 <= k_1_s_fu_462_p2(15 - 1 downto 0);
    tmp_26_fu_514_p1 <= k_1_1_fu_503_p2(15 - 1 downto 0);
    tmp_27_fu_554_p1 <= k_1_2_fu_543_p2(15 - 1 downto 0);
    tmp_2_fu_327_p2 <= "1" when (signed(j_cast_fu_323_p1) < signed(nC)) else "0";
    tmp_3_fu_308_p1 <= phi_mul_reg_236(15 - 1 downto 0);
    tmp_5_1_fu_468_p2 <= "1" when (signed(k_1_s_fu_462_p2) < signed(nA)) else "0";
    tmp_5_2_fu_509_p2 <= "1" when (signed(k_1_1_fu_503_p2) < signed(nA)) else "0";
    tmp_5_3_fu_549_p2 <= "1" when (signed(k_1_2_fu_543_p2) < signed(nA)) else "0";
    tmp_6_fu_338_p1 <= j_reg_225(15 - 1 downto 0);
    tmp_8_1_fu_497_p2 <= std_logic_vector(unsigned(tmp_8_reg_686) + unsigned(reg_273));
    tmp_8_2_fu_538_p2 <= std_logic_vector(unsigned(tmp_8_1_reg_705) + unsigned(tmp_7_2_reg_724));
    tmp_8_3_fu_584_p2 <= std_logic_vector(unsigned(tmp_8_2_reg_729) + unsigned(reg_273));
    tmp_8_fu_456_p2 <= std_logic_vector(unsigned(reg_273) + unsigned(C_load_reg_681));
    tmp_9_fu_352_p3 <= nA(31 downto 31);
    tmp_fu_297_p2 <= "1" when (signed(i_cast_fu_293_p1) < signed(mC)) else "0";
    tmp_s_fu_342_p2 <= std_logic_vector(unsigned(tmp_6_fu_338_p1) + unsigned(tmp_1_reg_610));
end behav;
