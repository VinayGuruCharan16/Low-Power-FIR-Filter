`timescale 1ns / 1ps
module fir8t4(clk,reset,x,y);
input[7:0] x;
input clk,reset;
output[15:0] y;
//wire[15:0] m1,m2,m3,m4,s1,s2,s3,q1,q2,q3;
wire[15:0] m1,m2,m3,s1,s2,q1,q2;

//parameter h0 = 8'd5;
parameter h1 = 8'd6;
parameter h2 = 8'd7;
parameter h3 = 8'd8;

dadda_8 ww1(x,h3,m1);
dff16b d1(clk,m1,reset,q1);

dadda_8 ww2(x,h2,m2);
BK_Adder r1(q1,m2,s1,c);
dff16b d2(clk,s1,reset,q2);

dadda_8 ww3(x,h1,m3);
BK_Adder r2(q2,m3,s2,c1);
//dff16b d3(clk,s2,reset,q3);
//
//dadda_8 ww4(x,h0,m4);
//BK_Adder r3(q3,m4,s3,c2);

assign y = s2;
endmodule 