////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: debounce_counter.v
// /___/   /\     Timestamp: Tue Sep 24 20:09:13 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/debounce/ipcore_dir/tmp/_cg/debounce_counter.ngc /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/debounce/ipcore_dir/tmp/_cg/debounce_counter.v 
// Device	: 3s500efg320-4
// Input file	: /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/debounce/ipcore_dir/tmp/_cg/debounce_counter.ngc
// Output file	: /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/debounce/ipcore_dir/tmp/_cg/debounce_counter.v
// # of Modules	: 1
// Design Name	: debounce_counter
// Xilinx        : /opt/Xilinx/13.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module debounce_counter (
  clk, ce, thresh0, sclr, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  output thresh0;
  input sclr;
  output [15 : 0] q;
  
  // synthesis translate_off
  
  wire N0;
  wire N01;
  wire N1;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/q_thresh0_i_19 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux_rt_52 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux_rt_53 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux_rt_54 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux_rt_55 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux_rt_56 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux_rt_57 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux_rt_58 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux_rt_59 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux_rt_60 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux_rt_61 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux_rt_62 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux_rt_63 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux_rt_64 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux_rt_65 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00000_67 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000012_68 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000017_69 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000027_70 ;
  wire \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00005_71 ;
  wire [15 : 0] \U0/i_synth/i_baseblox.i_baseblox_counter/q_next ;
  wire [14 : 0] \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple ;
  wire [0 : 0] \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum ;
  wire [16 : 1] \NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output ;
  assign
    thresh0 = \U0/i_synth/i_baseblox.i_baseblox_counter/q_thresh0_i_19 ,
    q[15] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [16],
    q[14] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [15],
    q[13] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [14],
    q[12] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [13],
    q[11] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [12],
    q[10] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [11],
    q[9] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [10],
    q[8] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [9],
    q[7] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [8],
    q[6] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [7],
    q[5] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [6],
    q[4] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [5],
    q[3] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [4],
    q[2] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3],
    q[1] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2],
    q[0] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1];
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/q_thresh0_i  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i ),
    .R(sclr),
    .Q(\U0/i_synth/i_baseblox.i_baseblox_counter/q_thresh0_i_19 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [0]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [1]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [2]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [3]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_5  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [4]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_6  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [5]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_7  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [6]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_8  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [7]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_9  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [8]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_10  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [9]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_11  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [10]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_12  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [11]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_13  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [12]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_14  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [13]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_15  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [14]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_16  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [15]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [16])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [13]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux_rt_56 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [14])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [13]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux_rt_56 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [14])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [12]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux_rt_55 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [13])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [12]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux_rt_55 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [13])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [11]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux_rt_54 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [12])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [11]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux_rt_54 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [12])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [10]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux_rt_53 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [11])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [10]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux_rt_53 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [11])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [9]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux_rt_52 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [10])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [9]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux_rt_52 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [10])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [8]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux_rt_65 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [9])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [8]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux_rt_65 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [9])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [7]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux_rt_64 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [8])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [7]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux_rt_64 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [8])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [6]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux_rt_63 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [7])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [6]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux_rt_63 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [7])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [5]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux_rt_62 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [6])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [5]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux_rt_62 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [6])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [4]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux_rt_61 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [5])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [4]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux_rt_61 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [5])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [3]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux_rt_60 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [4])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [3]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux_rt_60 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [4])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux_rt_59 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [3])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux_rt_59 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [3])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux_rt_58 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [2])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux_rt_58 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0]),
    .LI
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux_rt_57 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [1])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0]),
    .DI(N0),
    .S
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux_rt_57 )
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1])
  );
  XORCY   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [14]),
    .LI
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [16])
,
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [15])
  );
  XORCY   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.carryxor0  (
    .CI(N0),
    .LI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [0]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [0])
  );
  MUXCY   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_need_mux.carrymux0  (
    .CI(N0),
    .DI(N1),
    .S(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [0]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00000  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [13]),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [14]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00000_67 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00005  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [7]),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [6]),
    .I2(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [15]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00005_71 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000017  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [10]),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [9]),
    .I2(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [8]),
    .I3(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000012_68 ),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000017_69 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000042  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00000_67 ),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq00005_71 ),
    .I2(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000017_69 ),
    .I3(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000027_70 ),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [15])
,
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[14].carrymux_rt_56 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [14])
,
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[13].carrymux_rt_55 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [13])
,
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[12].carrymux_rt_54 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [12])
,
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[11].carrymux_rt_53 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [11])
,
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[10].carrymux_rt_52 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [10])
,
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[9].carrymux_rt_65 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [9]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[8].carrymux_rt_64 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [8]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[7].carrymux_rt_63 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [7]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[6].carrymux_rt_62 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [6]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[5].carrymux_rt_61 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [5]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[4].carrymux_rt_60 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [4]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[3].carrymux_rt_59 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux_rt_58 )

  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux_rt  (
    .I0
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2]),
    .O
(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux_rt_57 )

  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000027_SW0  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [2]),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [3]),
    .I2(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [4]),
    .O(N01)
  );
  INV   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum_not00001_INV_0  (
    .I
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [0])
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000012  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [0]),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [1]),
    .LO(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000012_68 )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000027  (
    .I0(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [12]),
    .I1(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [11]),
    .I2(\U0/i_synth/i_baseblox.i_baseblox_counter/q_next [5]),
    .I3(N01),
    .LO(\U0/i_synth/i_baseblox.i_baseblox_counter/thresh0_i_cmp_eq000027_70 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
