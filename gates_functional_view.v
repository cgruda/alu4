// ===== XOR2XL =====

`timescale 1ns/10ps
`celldefine
module XOR2XL (A, B, Y);
input  A ;
input  B ;
output Y ;

   xor (Y, A, B);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.12:0.12:0.12,
       tplhl$A$Y = 0.16:0.16:0.16,
       tphlh$A$Y = 0.16:0.16:0.16,
       tphhl$A$Y = 0.12:0.12:0.12,
       tpllh$B$Y = 0.087:0.087:0.087,
       tplhl$B$Y = 0.14:0.14:0.14,
       tphlh$B$Y = 0.11:0.11:0.11,
       tphhl$B$Y = 0.084:0.084:0.084;

     // path delays
     (posedge A *> (Y +: B)) = (tpllh$A$Y, tplhl$A$Y);
     (negedge A *> (Y +: B)) = (tphlh$A$Y, tphhl$A$Y);
     (posedge B *> (Y +: A)) = (tpllh$B$Y, tplhl$B$Y);
     (negedge B *> (Y +: A)) = (tphlh$B$Y, tphhl$B$Y);

   endspecify

endmodule
`endcelldefine

// ===== XOR3XL =====

`timescale 1ns/10ps
`celldefine
module XOR3XL (A, B, C, Y);
input  A ;
input  B ;
input  C ;
output Y ;

   xor (I0_out, A, B);
   xor (Y, I0_out, C);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.22:0.22:0.23,
       tplhl$A$Y = 0.28:0.28:0.29,
       tphlh$A$Y = 0.31:0.31:0.31,
       tphhl$A$Y = 0.2:0.2:0.21,
       tpllh$B$Y = 0.18:0.18:0.18,
       tplhl$B$Y = 0.17:0.17:0.17,
       tphlh$B$Y = 0.19:0.2:0.21,
       tphhl$B$Y = 0.15:0.16:0.17,
       tpllh$C$Y = 0.091:0.092:0.092,
       tplhl$C$Y = 0.1:0.1:0.1,
       tphlh$C$Y = 0.13:0.13:0.13,
       tphhl$C$Y = 0.078:0.078:0.079;

     // path delays
     (posedge A *> (Y +: C^B)) = (tpllh$A$Y, tplhl$A$Y);
     (negedge A *> (Y +: C^B)) = (tphlh$A$Y, tphhl$A$Y);
     (posedge B *> (Y +: C^A)) = (tpllh$B$Y, tplhl$B$Y);
     (negedge B *> (Y +: C^A)) = (tphlh$B$Y, tphhl$B$Y);
     (posedge C *> (Y +: B^A)) = (tpllh$C$Y, tplhl$C$Y);
     (negedge C *> (Y +: B^A)) = (tphlh$C$Y, tphhl$C$Y);

   endspecify

endmodule
`endcelldefine

// ===== OR2XL =====

`timescale 1ns/10ps
`celldefine
module OR2XL (A, B, Y);
input  A ;
input  B ;
output Y ;

   or  (Y, A, B);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.063:0.063:0.063,
       tphhl$A$Y = 0.098:0.098:0.098,
       tpllh$B$Y = 0.057:0.057:0.057,
       tphhl$B$Y = 0.089:0.089:0.089;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);

   endspecify

endmodule
`endcelldefine

// ===== OR3XL =====

`timescale 1ns/10ps
`celldefine
module OR3XL (A, B, C, Y);
input  A ;
input  B ;
input  C ;
output Y ;

   or  (Y, A, B, C);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.072:0.072:0.072,
       tphhl$A$Y = 0.16:0.16:0.16,
       tpllh$B$Y = 0.068:0.068:0.068,
       tphhl$B$Y = 0.15:0.15:0.15,
       tpllh$C$Y = 0.062:0.062:0.062,
       tphhl$C$Y = 0.13:0.13:0.13;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (C *> Y) = (tpllh$C$Y, tphhl$C$Y);

   endspecify

endmodule
`endcelldefine

// ===== OR4XL =====

`timescale 1ns/10ps
`celldefine
module OR4XL (A, B, C, D, Y);
input  A ;
input  B ;
input  C ;
input  D ;
output Y ;

   or  (Y, A, B, C, D);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.076:0.076:0.076,
       tphhl$A$Y = 0.22:0.22:0.22,
       tpllh$B$Y = 0.075:0.075:0.075,
       tphhl$B$Y = 0.22:0.22:0.22,
       tpllh$C$Y = 0.07:0.07:0.07,
       tphhl$C$Y = 0.2:0.2:0.2,
       tpllh$D$Y = 0.064:0.064:0.064,
       tphhl$D$Y = 0.16:0.16:0.16;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (C *> Y) = (tpllh$C$Y, tphhl$C$Y);
     (D *> Y) = (tpllh$D$Y, tphhl$D$Y);

   endspecify

endmodule
`endcelldefine

// ===== AND2XL =====

`timescale 1ns/10ps
`celldefine
module AND2XL (A, B, Y);
input  A ;
input  B ;
output Y ;

   and (Y, A, B);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.092:0.092:0.092,
       tphhl$A$Y = 0.066:0.066:0.066,
       tpllh$B$Y = 0.087:0.087:0.087,
       tphhl$B$Y = 0.061:0.061:0.061;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);

   endspecify

endmodule
`endcelldefine

// ===== AND3XL =====

`timescale 1ns/10ps
`celldefine
module AND3XL (A, B, C, Y);
input  A ;
input  B ;
input  C ;
output Y ;

   and (Y, A, B, C);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.14:0.14:0.14,
       tphhl$A$Y = 0.076:0.076:0.076,
       tpllh$B$Y = 0.14:0.14:0.14,
       tphhl$B$Y = 0.072:0.072:0.072,
       tpllh$C$Y = 0.13:0.13:0.13,
       tphhl$C$Y = 0.067:0.067:0.067;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (C *> Y) = (tpllh$C$Y, tphhl$C$Y);

   endspecify

endmodule
`endcelldefine

// ===== AND4XL =====

`timescale 1ns/10ps
`celldefine
module AND4XL (A, B, C, D, Y);
input  A ;
input  B ;
input  C ;
input  D ;
output Y ;

   and (Y, A, B, C, D);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.2:0.2:0.2,
       tphhl$A$Y = 0.082:0.082:0.082,
       tpllh$B$Y = 0.19:0.19:0.19,
       tphhl$B$Y = 0.08:0.08:0.08,
       tpllh$C$Y = 0.18:0.18:0.18,
       tphhl$C$Y = 0.075:0.075:0.075,
       tpllh$D$Y = 0.17:0.17:0.17,
       tphhl$D$Y = 0.07:0.07:0.07;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (C *> Y) = (tpllh$C$Y, tphhl$C$Y);
     (D *> Y) = (tpllh$D$Y, tphhl$D$Y);

   endspecify

endmodule
`endcelldefine

// ===== DFFXL =====

`timescale 1ns/10ps
`celldefine
module DFFXL (CK, D, Q, QN);
input  CK ;
input  D ;
output Q ;
output QN ;
reg NOTIFIER ;

   udp_dff (N30_4, D, CK, 1'B0, 1'B0, NOTIFIER);
   not (QBINT_3, N30_4);
   not (Q, QBINT_3);
   buf (QN, QBINT_3);

   specify
     // delay parameters
     specparam
       tpllh$CK$Q = 0.26:0.26:0.26,
       tplhl$CK$Q = 0.31:0.31:0.31,
       tpllh$CK$QN = 0.35:0.35:0.35,
       tplhl$CK$QN = 0.3:0.3:0.3,
       tminpwh$CK = 0.14:0.35:0.35,
       tminpwl$CK = 0.15:0.28:0.28,
       tsetup_negedge$D$CK = 0.095:0.095:0.095,
       thold_negedge$D$CK = 0.093:0.093:0.093,
       tsetup_posedge$D$CK = 0.19:0.19:0.19,
       thold_posedge$D$CK = -0.001:-0.001:-0.001;

     // path delays
     (posedge CK *> (Q +: D)) = (tpllh$CK$Q, tplhl$CK$Q);
     (posedge CK *> (QN -: D)) = (tpllh$CK$QN, tplhl$CK$QN);
     $setup(negedge D, posedge CK, tsetup_negedge$D$CK, NOTIFIER);
     $hold (posedge CK, negedge D, thold_negedge$D$CK,  NOTIFIER);
     $setup(posedge D, posedge CK, tsetup_posedge$D$CK, NOTIFIER);
     $hold (posedge CK, posedge D, thold_posedge$D$CK,  NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);

   endspecify

endmodule
`endcelldefine

// ===== MX2XL =====

`timescale 1ns/10ps
`celldefine
module MX2XL (A, B, S0, Y);
input  A ;
input  B ;
input  S0 ;
output Y ;

   udp_mux2 (Y, A, B, S0);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.11:0.11:0.11,
       tphhl$A$Y = 0.11:0.11:0.11,
       tpllh$B$Y = 0.11:0.11:0.11,
       tphhl$B$Y = 0.12:0.12:0.12,
       tpllh$S0$Y = 0.081:0.081:0.081,
       tplhl$S0$Y = 0.14:0.14:0.14,
       tphlh$S0$Y = 0.15:0.15:0.15,
       tphhl$S0$Y = 0.084:0.084:0.084;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (posedge S0 *> (Y +: A)) = (tpllh$S0$Y, tplhl$S0$Y);
     (negedge S0 *> (Y +: A)) = (tphlh$S0$Y, tphhl$S0$Y);

   endspecify

endmodule
`endcelldefine

// ===== MX3XL =====

`timescale 1ns/10ps
`celldefine
module MX3XL (A, B, C, S0, S1, Y);
input  A ;
input  B ;
input  C ;
input  S0 ;
input  S1 ;
output Y ;

   udp_mux2 (I0_out, A, B, S0);
   udp_mux2 (Y, I0_out, C, S1);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.18:0.18:0.18,
       tphhl$A$Y = 0.18:0.18:0.18,
       tpllh$B$Y = 0.18:0.18:0.18,
       tphhl$B$Y = 0.19:0.19:0.19,
       tpllh$C$Y = 0.11:0.11:0.11,
       tphhl$C$Y = 0.12:0.12:0.12,
       tpllh$S0$Y = 0.15:0.15:0.15,
       tplhl$S0$Y = 0.21:0.21:0.21,
       tphlh$S0$Y = 0.21:0.21:0.21,
       tphhl$S0$Y = 0.15:0.15:0.15,
       tpllh$S1$Y = 0.081:0.081:0.081,
       tplhl$S1$Y = 0.14:0.14:0.14,
       tphlh$S1$Y = 0.13:0.13:0.13,
       tphhl$S1$Y = 0.087:0.088:0.088;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (C *> Y) = (tpllh$C$Y, tphhl$C$Y);
     (posedge S0 *> (Y +: S1?C:A)) = (tpllh$S0$Y, tplhl$S0$Y);
     (negedge S0 *> (Y +: S1?C:A)) = (tphlh$S0$Y, tphhl$S0$Y);
     (posedge S1 *> (Y +: S0?B:A)) = (tpllh$S1$Y, tplhl$S1$Y);
     (negedge S1 *> (Y +: S0?B:A)) = (tphlh$S1$Y, tphhl$S1$Y);

   endspecify

endmodule
`endcelldefine

// ===== MX4XL =====

`timescale 1ns/10ps
`celldefine
module MX4XL (A, B, C, D, S0, S1, Y);
input  A ;
input  B ;
input  C ;
input  D ;
input  S0 ;
input  S1 ;
output Y ;

   udp_mux2 (I0_out, C, D, S0);
   udp_mux2 (I1_out, A, B, S0);
   udp_mux2 (Y, I1_out, I0_out, S1);

   specify
     // delay parameters
     specparam
       tpllh$A$Y = 0.19:0.19:0.19,
       tphhl$A$Y = 0.19:0.19:0.19,
       tpllh$B$Y = 0.19:0.19:0.19,
       tphhl$B$Y = 0.2:0.2:0.2,
       tpllh$C$Y = 0.18:0.18:0.18,
       tphhl$C$Y = 0.19:0.19:0.19,
       tpllh$D$Y = 0.18:0.18:0.18,
       tphhl$D$Y = 0.19:0.19:0.19,
       tpllh$S0$Y = 0.15:0.16:0.16,
       tplhl$S0$Y = 0.23:0.23:0.24,
       tphlh$S0$Y = 0.23:0.24:0.24,
       tphhl$S0$Y = 0.16:0.16:0.17,
       tpllh$S1$Y = 0.085:0.085:0.085,
       tplhl$S1$Y = 0.12:0.12:0.12,
       tphlh$S1$Y = 0.14:0.14:0.14,
       tphhl$S1$Y = 0.088:0.088:0.088;

     // path delays
     (A *> Y) = (tpllh$A$Y, tphhl$A$Y);
     (B *> Y) = (tpllh$B$Y, tphhl$B$Y);
     (C *> Y) = (tpllh$C$Y, tphhl$C$Y);
     (D *> Y) = (tpllh$D$Y, tphhl$D$Y);
     (posedge S0 *> (Y +: S1?C:A)) = (tpllh$S0$Y, tplhl$S0$Y);
     (negedge S0 *> (Y +: S1?C:A)) = (tphlh$S0$Y, tphhl$S0$Y);
     (posedge S1 *> (Y +: S0?B:A)) = (tpllh$S1$Y, tplhl$S1$Y);
     (negedge S1 *> (Y +: S0?B:A)) = (tphlh$S1$Y, tphhl$S1$Y);

   endspecify

endmodule
`endcelldefine
