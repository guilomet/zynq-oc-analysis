-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_15_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_bus_A_AWVALID : OUT STD_LOGIC;
    m_axi_bus_A_AWREADY : IN STD_LOGIC;
    m_axi_bus_A_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_A_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_A_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_A_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_A_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_A_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_A_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_WVALID : OUT STD_LOGIC;
    m_axi_bus_A_WREADY : IN STD_LOGIC;
    m_axi_bus_A_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_A_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_WLAST : OUT STD_LOGIC;
    m_axi_bus_A_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_ARVALID : OUT STD_LOGIC;
    m_axi_bus_A_ARREADY : IN STD_LOGIC;
    m_axi_bus_A_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_A_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_A_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_A_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_A_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_A_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_A_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_A_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_RVALID : IN STD_LOGIC;
    m_axi_bus_A_RREADY : OUT STD_LOGIC;
    m_axi_bus_A_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_A_RLAST : IN STD_LOGIC;
    m_axi_bus_A_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_A_BVALID : IN STD_LOGIC;
    m_axi_bus_A_BREADY : OUT STD_LOGIC;
    m_axi_bus_A_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_A_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_A_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_AWVALID : OUT STD_LOGIC;
    m_axi_bus_B_AWREADY : IN STD_LOGIC;
    m_axi_bus_B_AWADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_B_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_B_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_B_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_B_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_B_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_B_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_WVALID : OUT STD_LOGIC;
    m_axi_bus_B_WREADY : IN STD_LOGIC;
    m_axi_bus_B_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_B_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_WLAST : OUT STD_LOGIC;
    m_axi_bus_B_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_ARVALID : OUT STD_LOGIC;
    m_axi_bus_B_ARREADY : IN STD_LOGIC;
    m_axi_bus_B_ARADDR : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_B_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_B_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_B_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_B_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_B_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_bus_B_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_bus_B_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_RVALID : IN STD_LOGIC;
    m_axi_bus_B_RREADY : OUT STD_LOGIC;
    m_axi_bus_B_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_bus_B_RLAST : IN STD_LOGIC;
    m_axi_bus_B_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_B_BVALID : IN STD_LOGIC;
    m_axi_bus_B_BREADY : OUT STD_LOGIC;
    m_axi_bus_B_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_bus_B_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_bus_B_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln15_1 : IN STD_LOGIC_VECTOR (29 downto 0);
    sext_ln15 : IN STD_LOGIC_VECTOR (29 downto 0);
    tmp_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    tmp_ce0 : OUT STD_LOGIC;
    tmp_we0 : OUT STD_LOGIC;
    tmp_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_15_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln1057_reg_170 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter9 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter10 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln1057_fu_107_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal bus_B_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal bus_A_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_V_1_reg_165 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter1_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter2_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter3_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter4_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter5_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter6_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter7_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter8_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_1_reg_165_pp0_iter9_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal bus_A_addr_read_reg_174 : STD_LOGIC_VECTOR (31 downto 0);
    signal bus_B_addr_read_reg_179 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_87_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_reg_194 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal zext_ln19_fu_144_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_V_fu_48 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_V_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_V_2_fu_113_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_87_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_87_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_87_ce : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component test_scalaire_fmul_32ns_32ns_32_8_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component test_scalaire_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    fmul_32ns_32ns_32_8_max_dsp_1_U1 : component test_scalaire_fmul_32ns_32ns_32_8_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 8,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_87_p0,
        din1 => grp_fu_87_p1,
        ce => grp_fu_87_ce,
        dout => grp_fu_87_p2);

    flow_control_loop_pipe_sequential_init_U : component test_scalaire_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready_pp0_iter9_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    i_V_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln1057_fu_107_p2 = ap_const_lv1_0))) then 
                    i_V_fu_48 <= i_V_2_fu_113_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_V_fu_48 <= ap_const_lv8_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                i_V_1_reg_165 <= ap_sig_allocacmp_i_V_1;
                i_V_1_reg_165_pp0_iter1_reg <= i_V_1_reg_165;
                icmp_ln1057_reg_170 <= icmp_ln1057_fu_107_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
                i_V_1_reg_165_pp0_iter2_reg <= i_V_1_reg_165_pp0_iter1_reg;
                i_V_1_reg_165_pp0_iter3_reg <= i_V_1_reg_165_pp0_iter2_reg;
                i_V_1_reg_165_pp0_iter4_reg <= i_V_1_reg_165_pp0_iter3_reg;
                i_V_1_reg_165_pp0_iter5_reg <= i_V_1_reg_165_pp0_iter4_reg;
                i_V_1_reg_165_pp0_iter6_reg <= i_V_1_reg_165_pp0_iter5_reg;
                i_V_1_reg_165_pp0_iter7_reg <= i_V_1_reg_165_pp0_iter6_reg;
                i_V_1_reg_165_pp0_iter8_reg <= i_V_1_reg_165_pp0_iter7_reg;
                i_V_1_reg_165_pp0_iter9_reg <= i_V_1_reg_165_pp0_iter8_reg;
                mul_reg_194 <= grp_fu_87_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_reg_170 = ap_const_lv1_0))) then
                bus_A_addr_read_reg_174 <= m_axi_bus_A_RDATA;
                bus_B_addr_read_reg_179 <= m_axi_bus_B_RDATA;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_bus_A_RVALID, icmp_ln1057_reg_170, m_axi_bus_B_RVALID)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((m_axi_bus_B_RVALID = ap_const_logic_0) and (icmp_ln1057_reg_170 = ap_const_lv1_0)) or ((m_axi_bus_A_RVALID = ap_const_logic_0) and (icmp_ln1057_reg_170 = ap_const_lv1_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_bus_A_RVALID, icmp_ln1057_reg_170, m_axi_bus_B_RVALID)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((m_axi_bus_B_RVALID = ap_const_logic_0) and (icmp_ln1057_reg_170 = ap_const_lv1_0)) or ((m_axi_bus_A_RVALID = ap_const_logic_0) and (icmp_ln1057_reg_170 = ap_const_lv1_0))));
    end process;

        ap_block_state10_pp0_stage0_iter9 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage0_iter10 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_bus_A_RVALID, icmp_ln1057_reg_170, m_axi_bus_B_RVALID)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (((m_axi_bus_B_RVALID = ap_const_logic_0) and (icmp_ln1057_reg_170 = ap_const_lv1_0)) or ((m_axi_bus_A_RVALID = ap_const_logic_0) and (icmp_ln1057_reg_170 = ap_const_lv1_0)));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln1057_fu_107_p2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln1057_fu_107_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1057_reg_170, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln1057_reg_170 = ap_const_lv1_1))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter9_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter9_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10)
    begin
        if (((ap_enable_reg_pp0_iter10 = ap_const_logic_0) and (ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_V_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_V_fu_48, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_i_V_1 <= ap_const_lv8_0;
        else 
            ap_sig_allocacmp_i_V_1 <= i_V_fu_48;
        end if; 
    end process;


    bus_A_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_bus_A_RVALID, icmp_ln1057_reg_170, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln1057_reg_170 = ap_const_lv1_0))) then 
            bus_A_blk_n_R <= m_axi_bus_A_RVALID;
        else 
            bus_A_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;


    bus_B_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1057_reg_170, m_axi_bus_B_RVALID, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln1057_reg_170 = ap_const_lv1_0))) then 
            bus_B_blk_n_R <= m_axi_bus_B_RVALID;
        else 
            bus_B_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;


    grp_fu_87_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            grp_fu_87_ce <= ap_const_logic_1;
        else 
            grp_fu_87_ce <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_87_p0 <= bus_A_addr_read_reg_174;
    grp_fu_87_p1 <= bus_B_addr_read_reg_179;
    i_V_2_fu_113_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_V_1) + unsigned(ap_const_lv8_1));
    icmp_ln1057_fu_107_p2 <= "1" when (ap_sig_allocacmp_i_V_1 = ap_const_lv8_FF) else "0";
    m_axi_bus_A_ARADDR <= ap_const_lv32_0;
    m_axi_bus_A_ARBURST <= ap_const_lv2_0;
    m_axi_bus_A_ARCACHE <= ap_const_lv4_0;
    m_axi_bus_A_ARID <= ap_const_lv1_0;
    m_axi_bus_A_ARLEN <= ap_const_lv32_0;
    m_axi_bus_A_ARLOCK <= ap_const_lv2_0;
    m_axi_bus_A_ARPROT <= ap_const_lv3_0;
    m_axi_bus_A_ARQOS <= ap_const_lv4_0;
    m_axi_bus_A_ARREGION <= ap_const_lv4_0;
    m_axi_bus_A_ARSIZE <= ap_const_lv3_0;
    m_axi_bus_A_ARUSER <= ap_const_lv1_0;
    m_axi_bus_A_ARVALID <= ap_const_logic_0;
    m_axi_bus_A_AWADDR <= ap_const_lv32_0;
    m_axi_bus_A_AWBURST <= ap_const_lv2_0;
    m_axi_bus_A_AWCACHE <= ap_const_lv4_0;
    m_axi_bus_A_AWID <= ap_const_lv1_0;
    m_axi_bus_A_AWLEN <= ap_const_lv32_0;
    m_axi_bus_A_AWLOCK <= ap_const_lv2_0;
    m_axi_bus_A_AWPROT <= ap_const_lv3_0;
    m_axi_bus_A_AWQOS <= ap_const_lv4_0;
    m_axi_bus_A_AWREGION <= ap_const_lv4_0;
    m_axi_bus_A_AWSIZE <= ap_const_lv3_0;
    m_axi_bus_A_AWUSER <= ap_const_lv1_0;
    m_axi_bus_A_AWVALID <= ap_const_logic_0;
    m_axi_bus_A_BREADY <= ap_const_logic_0;

    m_axi_bus_A_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1057_reg_170, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_reg_170 = ap_const_lv1_0))) then 
            m_axi_bus_A_RREADY <= ap_const_logic_1;
        else 
            m_axi_bus_A_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_bus_A_WDATA <= ap_const_lv32_0;
    m_axi_bus_A_WID <= ap_const_lv1_0;
    m_axi_bus_A_WLAST <= ap_const_logic_0;
    m_axi_bus_A_WSTRB <= ap_const_lv4_0;
    m_axi_bus_A_WUSER <= ap_const_lv1_0;
    m_axi_bus_A_WVALID <= ap_const_logic_0;
    m_axi_bus_B_ARADDR <= ap_const_lv32_0;
    m_axi_bus_B_ARBURST <= ap_const_lv2_0;
    m_axi_bus_B_ARCACHE <= ap_const_lv4_0;
    m_axi_bus_B_ARID <= ap_const_lv1_0;
    m_axi_bus_B_ARLEN <= ap_const_lv32_0;
    m_axi_bus_B_ARLOCK <= ap_const_lv2_0;
    m_axi_bus_B_ARPROT <= ap_const_lv3_0;
    m_axi_bus_B_ARQOS <= ap_const_lv4_0;
    m_axi_bus_B_ARREGION <= ap_const_lv4_0;
    m_axi_bus_B_ARSIZE <= ap_const_lv3_0;
    m_axi_bus_B_ARUSER <= ap_const_lv1_0;
    m_axi_bus_B_ARVALID <= ap_const_logic_0;
    m_axi_bus_B_AWADDR <= ap_const_lv32_0;
    m_axi_bus_B_AWBURST <= ap_const_lv2_0;
    m_axi_bus_B_AWCACHE <= ap_const_lv4_0;
    m_axi_bus_B_AWID <= ap_const_lv1_0;
    m_axi_bus_B_AWLEN <= ap_const_lv32_0;
    m_axi_bus_B_AWLOCK <= ap_const_lv2_0;
    m_axi_bus_B_AWPROT <= ap_const_lv3_0;
    m_axi_bus_B_AWQOS <= ap_const_lv4_0;
    m_axi_bus_B_AWREGION <= ap_const_lv4_0;
    m_axi_bus_B_AWSIZE <= ap_const_lv3_0;
    m_axi_bus_B_AWUSER <= ap_const_lv1_0;
    m_axi_bus_B_AWVALID <= ap_const_logic_0;
    m_axi_bus_B_BREADY <= ap_const_logic_0;

    m_axi_bus_B_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln1057_reg_170, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln1057_reg_170 = ap_const_lv1_0))) then 
            m_axi_bus_B_RREADY <= ap_const_logic_1;
        else 
            m_axi_bus_B_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_bus_B_WDATA <= ap_const_lv32_0;
    m_axi_bus_B_WID <= ap_const_lv1_0;
    m_axi_bus_B_WLAST <= ap_const_logic_0;
    m_axi_bus_B_WSTRB <= ap_const_lv4_0;
    m_axi_bus_B_WUSER <= ap_const_lv1_0;
    m_axi_bus_B_WVALID <= ap_const_logic_0;
    tmp_address0 <= zext_ln19_fu_144_p1(8 - 1 downto 0);

    tmp_ce0_assign_proc : process(ap_enable_reg_pp0_iter10, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            tmp_ce0 <= ap_const_logic_1;
        else 
            tmp_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_d0 <= mul_reg_194;

    tmp_we0_assign_proc : process(ap_enable_reg_pp0_iter10, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            tmp_we0 <= ap_const_logic_1;
        else 
            tmp_we0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln19_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_V_1_reg_165_pp0_iter9_reg),32));
end behav;
