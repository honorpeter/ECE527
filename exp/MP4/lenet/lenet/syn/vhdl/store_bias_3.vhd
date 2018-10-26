-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity store_bias_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_bias_AWVALID : OUT STD_LOGIC;
    m_axi_bias_AWREADY : IN STD_LOGIC;
    m_axi_bias_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bias_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bias_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bias_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bias_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bias_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bias_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_WVALID : OUT STD_LOGIC;
    m_axi_bias_WREADY : IN STD_LOGIC;
    m_axi_bias_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bias_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_WLAST : OUT STD_LOGIC;
    m_axi_bias_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_ARVALID : OUT STD_LOGIC;
    m_axi_bias_ARREADY : IN STD_LOGIC;
    m_axi_bias_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bias_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bias_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bias_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bias_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bias_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bias_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bias_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_RVALID : IN STD_LOGIC;
    m_axi_bias_RREADY : OUT STD_LOGIC;
    m_axi_bias_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bias_RLAST : IN STD_LOGIC;
    m_axi_bias_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bias_BVALID : IN STD_LOGIC;
    m_axi_bias_BREADY : OUT STD_LOGIC;
    m_axi_bias_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bias_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bias_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    bias_offset : IN STD_LOGIC_VECTOR (29 downto 0);
    bias_oc_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    bias_oc_ce0 : OUT STD_LOGIC;
    bias_oc_we0 : OUT STD_LOGIC;
    bias_oc_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of store_bias_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal bias_blk_n_AR : STD_LOGIC;
    signal bias_blk_n_R : STD_LOGIC;
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal exitcond_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_ioackin_m_axi_bias_ARREADY : STD_LOGIC;
    signal i_7_fu_98_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_7_reg_118 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state8 : BOOLEAN;
    signal bias_addr_read_reg_123 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_69 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_fu_104_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_fu_81_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_reg_ioackin_m_axi_bias_ARREADY : STD_LOGIC := '0';
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);


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


    ap_reg_ioackin_m_axi_bias_ARREADY_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_m_axi_bias_ARREADY <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                    if (not(((ap_start = ap_const_logic_0) or (ap_sig_ioackin_m_axi_bias_ARREADY = ap_const_logic_0)))) then 
                        ap_reg_ioackin_m_axi_bias_ARREADY <= ap_const_logic_0;
                    elsif (((m_axi_bias_ARREADY = ap_const_logic_1) and (ap_start = ap_const_logic_1))) then 
                        ap_reg_ioackin_m_axi_bias_ARREADY <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    i_reg_69_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                i_reg_69 <= i_7_reg_118;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_reg_69 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (exitcond_fu_92_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                bias_addr_read_reg_123 <= m_axi_bias_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                i_7_reg_118 <= i_7_fu_98_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, m_axi_bias_RVALID, ap_CS_fsm_state8, exitcond_fu_92_p2, ap_sig_ioackin_m_axi_bias_ARREADY)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_sig_ioackin_m_axi_bias_ARREADY = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if ((not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8) and (exitcond_fu_92_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (exitcond_fu_92_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state8_assign_proc : process(m_axi_bias_RVALID, exitcond_fu_92_p2)
    begin
                ap_block_state8 <= ((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_bias_RVALID, ap_CS_fsm_state8, exitcond_fu_92_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8) and (exitcond_fu_92_p2 = ap_const_lv1_1)))) then 
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


    ap_ready_assign_proc : process(m_axi_bias_RVALID, ap_CS_fsm_state8, exitcond_fu_92_p2)
    begin
        if ((not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state8) and (exitcond_fu_92_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_m_axi_bias_ARREADY_assign_proc : process(m_axi_bias_ARREADY, ap_reg_ioackin_m_axi_bias_ARREADY)
    begin
        if ((ap_reg_ioackin_m_axi_bias_ARREADY = ap_const_logic_0)) then 
            ap_sig_ioackin_m_axi_bias_ARREADY <= m_axi_bias_ARREADY;
        else 
            ap_sig_ioackin_m_axi_bias_ARREADY <= ap_const_logic_1;
        end if; 
    end process;


    bias_blk_n_AR_assign_proc : process(ap_start, ap_CS_fsm_state1, m_axi_bias_ARREADY)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            bias_blk_n_AR <= m_axi_bias_ARREADY;
        else 
            bias_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    bias_blk_n_R_assign_proc : process(m_axi_bias_RVALID, ap_CS_fsm_state8, exitcond_fu_92_p2)
    begin
        if (((exitcond_fu_92_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            bias_blk_n_R <= m_axi_bias_RVALID;
        else 
            bias_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    bias_oc_address0 <= tmp_fu_104_p1(4 - 1 downto 0);

    bias_oc_ce0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            bias_oc_ce0 <= ap_const_logic_1;
        else 
            bias_oc_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    bias_oc_d0 <= bias_addr_read_reg_123;

    bias_oc_we0_assign_proc : process(ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            bias_oc_we0 <= ap_const_logic_1;
        else 
            bias_oc_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_92_p2 <= "1" when (i_reg_69 = ap_const_lv5_10) else "0";
    i_7_fu_98_p2 <= std_logic_vector(unsigned(i_reg_69) + unsigned(ap_const_lv5_1));
    m_axi_bias_ARADDR <= sext_fu_81_p1(32 - 1 downto 0);
    m_axi_bias_ARBURST <= ap_const_lv2_0;
    m_axi_bias_ARCACHE <= ap_const_lv4_0;
    m_axi_bias_ARID <= ap_const_lv1_0;
    m_axi_bias_ARLEN <= ap_const_lv32_10;
    m_axi_bias_ARLOCK <= ap_const_lv2_0;
    m_axi_bias_ARPROT <= ap_const_lv3_0;
    m_axi_bias_ARQOS <= ap_const_lv4_0;
    m_axi_bias_ARREGION <= ap_const_lv4_0;
    m_axi_bias_ARSIZE <= ap_const_lv3_0;
    m_axi_bias_ARUSER <= ap_const_lv1_0;

    m_axi_bias_ARVALID_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_reg_ioackin_m_axi_bias_ARREADY)
    begin
        if (((ap_reg_ioackin_m_axi_bias_ARREADY = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            m_axi_bias_ARVALID <= ap_const_logic_1;
        else 
            m_axi_bias_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_bias_AWADDR <= ap_const_lv32_0;
    m_axi_bias_AWBURST <= ap_const_lv2_0;
    m_axi_bias_AWCACHE <= ap_const_lv4_0;
    m_axi_bias_AWID <= ap_const_lv1_0;
    m_axi_bias_AWLEN <= ap_const_lv32_0;
    m_axi_bias_AWLOCK <= ap_const_lv2_0;
    m_axi_bias_AWPROT <= ap_const_lv3_0;
    m_axi_bias_AWQOS <= ap_const_lv4_0;
    m_axi_bias_AWREGION <= ap_const_lv4_0;
    m_axi_bias_AWSIZE <= ap_const_lv3_0;
    m_axi_bias_AWUSER <= ap_const_lv1_0;
    m_axi_bias_AWVALID <= ap_const_logic_0;
    m_axi_bias_BREADY <= ap_const_logic_0;

    m_axi_bias_RREADY_assign_proc : process(m_axi_bias_RVALID, ap_CS_fsm_state8, exitcond_fu_92_p2)
    begin
        if ((not(((exitcond_fu_92_p2 = ap_const_lv1_0) and (m_axi_bias_RVALID = ap_const_logic_0))) and (exitcond_fu_92_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            m_axi_bias_RREADY <= ap_const_logic_1;
        else 
            m_axi_bias_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_bias_WDATA <= ap_const_lv32_0;
    m_axi_bias_WID <= ap_const_lv1_0;
    m_axi_bias_WLAST <= ap_const_logic_0;
    m_axi_bias_WSTRB <= ap_const_lv4_0;
    m_axi_bias_WUSER <= ap_const_lv1_0;
    m_axi_bias_WVALID <= ap_const_logic_0;
    sext_fu_81_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bias_offset),64));
    tmp_fu_104_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_69),64));
end behav;