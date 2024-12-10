module GP(Geq, Peq, G0, G1, P0, P1);
input G0, G1, P0, P1;
output Geq, Peq;
assign Peq = P0 & P1; // propagate p
  A_BC_logic g0(Geq, G1,G0, P1);  // Generate G(i+1) instantiation
endmodule
