module BK_Adder(a, b, s, cout);
input [15:0]a,b;
wire cin;
output [15:0]s;
output cout;
wire [15:0]p,g;
wire [7:0]pp,gg;
wire [3:0]ppp, ggg;
wire [1:0]pppp,gggg;
wire ggggg,ppppp;
wire [3:0]abc1;
wire [3:0]abc2;
wire [7:0]abc3;
assign cin = 1'b0;
////// HAs //////////////////////////////
HA g0(p[0], g[0], a[0], b[0]);
HA g1(p[1], g[1], a[1], b[1]);
HA g2(p[2], g[2], a[2], b[2]);
HA g3(p[3], g[3], a[3], b[3]);
HA g4(p[4], g[4], a[4], b[4]);
HA g5(p[5], g[5], a[5], b[5]);
HA g6(p[6], g[6], a[6], b[6]);
HA g7(p[7], g[7], a[7], b[7]);
HA g8(p[8], g[8], a[8], b[8]);
HA g9(p[9], g[9], a[9], b[9]);
HA g10(p[10], g[10], a[10], b[10]);
HA g11(p[11], g[11], a[11], b[11]);
HA g12(p[12], g[12], a[12], b[12]);
HA g13(p[13], g[13], a[13], b[13]);
HA g14(p[14], g[14], a[14], b[14]);
HA g15(p[15], g[15], a[15], b[15]);
////GP-Level1///////////////////////////////////
GP g16(gg[0], pp[0], g[0], g[1], p[0], p[1]);
GP g17(gg[1], pp[1], g[2], g[3], p[2], p[3]);
GP g18(gg[2], pp[2], g[4], g[5], p[4], p[5]);
GP g19(gg[3], pp[3], g[6], g[7], p[6], p[7]);
GP g20(gg[4], pp[4], g[8], g[9], p[8], p[9]);
GP g21(gg[5], pp[5], g[10], g[11], p[10], p[11]);
GP g22(gg[6], pp[6], g[12], g[13], p[12], p[13]);
GP g23(gg[7], pp[7], g[14], g[15], p[14], p[15]);
//////GP-Level2////////////////////////////////////////
GP g24(ggg[0], ppp[0], gg[0], gg[1], pp[0], pp[1]);
GP g25(ggg[1], ppp[1], gg[2], gg[3], pp[2], pp[3]);
GP g26(ggg[2], ppp[2], gg[4], gg[5], pp[4], pp[5]);
GP g27(ggg[3], ppp[3], gg[6], gg[7], pp[6], pp[7]);
/////GP-Level3//////////////////////////////////////
GP g28(gggg[0], pppp[0], ggg[0], ggg[1], ppp[0], ppp[1]);
GP g29(gggg[1], pppp[1], ggg[2], ggg[3], ppp[2], ppp[3]);
//////GP-Level4/////////////////////////////////////
GP g30(ggggg, ppppp, gggg[0], gggg[1], pppp[0], pppp[1]);
/////A_BC-Level1/////////////////////////////////////////
A_BC_logic g31(abc1[0], ggg[0], ppp[0], cin);
A_BC_logic g32(abc1[1], gggg[0], pppp[0], cin);
A_BC_logic g33(abc1[2], ggggg, ppppp, cin);
A_BC_logic g34(abc1[3], ggg[2], ppp[2], abc1[0]);
////A_BC-Level2/////////////////////////////////////////
A_BC_logic g35(abc2[0], gg[0], pp[0], cin);
A_BC_logic g36(abc2[1], gg[2], pp[2], abc1[0]);
A_BC_logic g37(abc2[2], gg[4], pp[4], abc1[1]);
A_BC_logic g38(abc2[3], gg[6], pp[6], abc1[3]);
////A_BC-Level3////////////////////////////////////////
A_BC_logic g39(abc3[0], g[0], p[0], cin);
A_BC_logic g40(abc3[1], g[2], p[2], abc2[0]);
A_BC_logic g41(abc3[2], g[4], p[4], abc1[0]);
A_BC_logic g42(abc3[3], g[6], p[6], abc2[1]);
A_BC_logic g43(abc3[4], g[8], p[8], abc1[1]);
A_BC_logic g44(abc3[5], g[10], p[10], abc2[2]);
A_BC_logic g45(abc3[6], g[12], p[12], abc1[3]);
A_BC_logic g46(abc3[7], g[14], p[14], abc2[3]);
////Xor////////////////////////////////////////////
xor g47(s[0], cin, p[0]);
xor g48(s[1], abc3[0], p[1]);
xor g49(s[2], abc2[0], p[2]);
xor g50(s[3], abc3[1], p[3]);
xor g51(s[4], abc1[0], p[4]);
xor g52(s[5], abc3[2], p[5]);
xor g53(s[6], abc2[1], p[6]);
xor g54(s[7], abc3[3], p[7]);
xor g55(s[8], abc1[1], p[8]);
xor g56(s[9], abc3[4], p[9]);
xor g57(s[10], abc2[2], p[10]);
xor g58(s[11], abc3[5], p[11]);
xor g59(s[12], abc1[3], p[12]);
xor g60(s[13], abc3[6], p[13]);
xor g61(s[14], abc2[3], p[14]);
xor g62(s[15], abc3[7], p[15]);
assign cout =abc1[2] ;
endmodule 
