module A_BC_logic(p, A, B, C);
input A,B,C;
output p;
assign p = A | (B&C);
endmodule 
