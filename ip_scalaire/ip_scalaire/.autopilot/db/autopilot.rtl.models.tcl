set SynModuleInfo {
  {SRCNAME test_scalaire_Pipeline_loop_1 MODELNAME test_scalaire_Pipeline_loop_1 RTLNAME test_scalaire_test_scalaire_Pipeline_loop_1
    SUBMODULES {
      {MODELNAME test_scalaire_fadd_32ns_32ns_32_10_full_dsp_1 RTLNAME test_scalaire_fadd_32ns_32ns_32_10_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME test_scalaire_fmul_32ns_32ns_32_8_max_dsp_1 RTLNAME test_scalaire_fmul_32ns_32ns_32_8_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME test_scalaire_flow_control_loop_pipe_sequential_init RTLNAME test_scalaire_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME test_scalaire_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME test_scalaire MODELNAME test_scalaire RTLNAME test_scalaire IS_TOP 1
    SUBMODULES {
      {MODELNAME test_scalaire_control_s_axi RTLNAME test_scalaire_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME test_scalaire_bus_A_m_axi RTLNAME test_scalaire_bus_A_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME test_scalaire_bus_B_m_axi RTLNAME test_scalaire_bus_B_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME test_scalaire_bus_res_m_axi RTLNAME test_scalaire_bus_res_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
