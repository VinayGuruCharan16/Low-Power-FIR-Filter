//carry save adder -- for implementing dadda multiplier
//csa for use of half adder and full adder.

module csa_dadda(A,B,Cin,Y,Cout);
input A,B,Cin;
output Y,Cout;
    
assign Y = A^B^Cin;
assign Cout = (A&B)|(A&Cin)|(B&Cin);
    
endmodule
