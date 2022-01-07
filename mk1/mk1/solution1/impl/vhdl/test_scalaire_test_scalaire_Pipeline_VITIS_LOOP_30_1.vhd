-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_30_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp : IN STD_LOGIC_VECTOR (31 downto 0);
    A_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    A_V_TVALID : IN STD_LOGIC;
    A_V_TREADY : OUT STD_LOGIC;
    B_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    B_V_TVALID : IN STD_LOGIC;
    B_V_TREADY : OUT STD_LOGIC;
    tmpRes_1_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    tmpRes_1_out_ap_vld : OUT STD_LOGIC;
    grp_fu_85_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_85_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_85_p_dout0 : IN STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_85_p_ce : OUT STD_LOGIC );
end;


architecture behav of test_scalaire_test_scalaire_Pipeline_VITIS_LOOP_30_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv8_FE : STD_LOGIC_VECTOR (7 downto 0) := "11111110";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state5_pp0_stage4_iter0 : BOOLEAN;
    signal icmp_ln46_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage4 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal A_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal B_V_TDATA_blk_n : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal aa_fu_108_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal bb_fu_113_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_44 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_3_fu_121_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal tmp_1_fu_48 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_tmp_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmpRes_fu_52 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_81_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_81_ce : STD_LOGIC;
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal grp_fu_86_ce : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component test_scalaire_fadd_32ns_32ns_32_5_full_dsp_1 IS
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


    component test_scalaire_fmul_32ns_32ns_32_4_max_dsp_1 IS
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
    fadd_32ns_32ns_32_5_full_dsp_1_U1 : component test_scalaire_fadd_32ns_32ns_32_5_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmpRes_fu_52,
        din1 => ap_sig_allocacmp_tmp_3,
        ce => grp_fu_81_ce,
        dout => grp_fu_81_p2);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage4,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                i_fu_44 <= ap_const_lv8_0;
            elsif (((icmp_ln46_fu_127_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                i_fu_44 <= i_3_fu_121_p2;
            end if; 
        end if;
    end process;

    tmp_1_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
                tmp_1_fu_48 <= tmp;
            elsif (((icmp_ln46_fu_127_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                tmp_1_fu_48 <= grp_fu_85_p_dout0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln46_fu_127_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                tmpRes_fu_52 <= grp_fu_81_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state5, A_V_TVALID, B_V_TVALID, ap_CS_fsm_state2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;

    A_V_TDATA_blk_n_assign_proc : process(A_V_TVALID, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            A_V_TDATA_blk_n <= A_V_TVALID;
        else 
            A_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    A_V_TREADY_assign_proc : process(A_V_TVALID, B_V_TVALID, ap_CS_fsm_state2)
    begin
        if ((not(((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            A_V_TREADY <= ap_const_logic_1;
        else 
            A_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    B_V_TDATA_blk_n_assign_proc : process(B_V_TVALID, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            B_V_TDATA_blk_n <= B_V_TVALID;
        else 
            B_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    B_V_TREADY_assign_proc : process(A_V_TVALID, B_V_TVALID, ap_CS_fsm_state2)
    begin
        if ((not(((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID))) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            B_V_TREADY <= ap_const_logic_1;
        else 
            B_V_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    aa_fu_108_p1 <= A_V_TDATA;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(A_V_TVALID, B_V_TVALID)
    begin
        if (((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID))) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_block_state2_pp0_stage1_iter0_assign_proc : process(A_V_TVALID, B_V_TVALID)
    begin
                ap_block_state2_pp0_stage1_iter0 <= ((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID));
    end process;

        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage4_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage4_assign_proc : process(ap_CS_fsm_state5, icmp_ln46_fu_127_p2)
    begin
        if (((icmp_ln46_fu_127_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_condition_exit_pp0_iter0_stage4 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state5, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage4;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_tmp_3_assign_proc : process(ap_CS_fsm_state1, tmp, ap_loop_init, tmp_1_fu_48)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_tmp_3 <= tmp;
        else 
            ap_sig_allocacmp_tmp_3 <= tmp_1_fu_48;
        end if; 
    end process;

    bb_fu_113_p1 <= B_V_TDATA;

    grp_fu_81_ce_assign_proc : process(ap_CS_fsm_state1, A_V_TVALID, B_V_TVALID, ap_CS_fsm_state2, ap_start_int)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and ((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID))) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0)))) then 
            grp_fu_81_ce <= ap_const_logic_0;
        else 
            grp_fu_81_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_85_p_ce <= grp_fu_86_ce;
    grp_fu_85_p_din0 <= aa_fu_108_p1;
    grp_fu_85_p_din1 <= bb_fu_113_p1;

    grp_fu_86_ce_assign_proc : process(ap_CS_fsm_state1, A_V_TVALID, B_V_TVALID, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) or ((ap_const_logic_1 = ap_CS_fsm_state2) and ((ap_const_logic_0 = B_V_TVALID) or (ap_const_logic_0 = A_V_TVALID))))) then 
            grp_fu_86_ce <= ap_const_logic_0;
        else 
            grp_fu_86_ce <= ap_const_logic_1;
        end if; 
    end process;

    i_3_fu_121_p2 <= std_logic_vector(unsigned(i_fu_44) + unsigned(ap_const_lv8_1));
    icmp_ln46_fu_127_p2 <= "1" when (i_fu_44 = ap_const_lv8_FE) else "0";
    tmpRes_1_out <= grp_fu_81_p2;

    tmpRes_1_out_ap_vld_assign_proc : process(ap_CS_fsm_state5, icmp_ln46_fu_127_p2)
    begin
        if (((icmp_ln46_fu_127_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            tmpRes_1_out_ap_vld <= ap_const_logic_1;
        else 
            tmpRes_1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
