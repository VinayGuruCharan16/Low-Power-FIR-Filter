module HA (p, g, A, B);
input A,B;
output p, g;
assign p = A ^ B;
assign g = A & B;
endmodule 
