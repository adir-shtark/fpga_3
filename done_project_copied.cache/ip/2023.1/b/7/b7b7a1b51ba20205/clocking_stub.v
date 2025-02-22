// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Sep 21 18:06:21 2023
// Host        : DESKTOP-2822QQS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ clocking_stub.v
// Design      : clocking
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK_50, CLK_25, CLK_100)
/* synthesis syn_black_box black_box_pad_pin="CLK_100" */
/* synthesis syn_force_seq_prim="CLK_50" */
/* synthesis syn_force_seq_prim="CLK_25" */;
  output CLK_50 /* synthesis syn_isclock = 1 */;
  output CLK_25 /* synthesis syn_isclock = 1 */;
  input CLK_100;
endmodule
