set SynModuleInfo {
  {SRCNAME sha256_top_Pipeline_1 MODELNAME sha256_top_Pipeline_1 RTLNAME sha256_top_sha256_top_Pipeline_1
    SUBMODULES {
      {MODELNAME sha256_top_flow_control_loop_pipe_sequential_init RTLNAME sha256_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sha256_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sha256_transform_Pipeline_VITIS_LOOP_19_2 MODELNAME sha256_transform_Pipeline_VITIS_LOOP_19_2 RTLNAME sha256_top_sha256_transform_Pipeline_VITIS_LOOP_19_2
    SUBMODULES {
      {MODELNAME sha256_top_sparsemux_97_6_32_1_1 RTLNAME sha256_top_sparsemux_97_6_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME sha256_transform_Pipeline_VITIS_LOOP_33_3 MODELNAME sha256_transform_Pipeline_VITIS_LOOP_33_3 RTLNAME sha256_top_sha256_transform_Pipeline_VITIS_LOOP_33_3
    SUBMODULES {
      {MODELNAME sha256_top_sparsemux_129_6_32_1_1 RTLNAME sha256_top_sparsemux_129_6_32_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME sha256_top_sha256_transform_Pipeline_VITIS_LOOP_33_3_k_ROM_AUTO_1R RTLNAME sha256_top_sha256_transform_Pipeline_VITIS_LOOP_33_3_k_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sha256_transform MODELNAME sha256_transform RTLNAME sha256_top_sha256_transform}
  {SRCNAME sha256_final_Pipeline_VITIS_LOOP_106_2 MODELNAME sha256_final_Pipeline_VITIS_LOOP_106_2 RTLNAME sha256_top_sha256_final_Pipeline_VITIS_LOOP_106_2}
  {SRCNAME sha256_final_Pipeline_VITIS_LOOP_111_3 MODELNAME sha256_final_Pipeline_VITIS_LOOP_111_3 RTLNAME sha256_top_sha256_final_Pipeline_VITIS_LOOP_111_3}
  {SRCNAME sha256_final_Pipeline_VITIS_LOOP_103_1 MODELNAME sha256_final_Pipeline_VITIS_LOOP_103_1 RTLNAME sha256_top_sha256_final_Pipeline_VITIS_LOOP_103_1}
  {SRCNAME sha256_final MODELNAME sha256_final RTLNAME sha256_top_sha256_final}
  {SRCNAME sha256_top_Pipeline_VITIS_LOOP_52_4 MODELNAME sha256_top_Pipeline_VITIS_LOOP_52_4 RTLNAME sha256_top_sha256_top_Pipeline_VITIS_LOOP_52_4}
  {SRCNAME sha256_top MODELNAME sha256_top RTLNAME sha256_top IS_TOP 1
    SUBMODULES {
      {MODELNAME sha256_top_sparsemux_161_7_8_1_1 RTLNAME sha256_top_sparsemux_161_7_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME sha256_top_sparsemux_65_5_8_1_1 RTLNAME sha256_top_sparsemux_65_5_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME sha256_top_state_RAM_AUTO_1R1W RTLNAME sha256_top_state_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sha256_top_control_s_axi RTLNAME sha256_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
