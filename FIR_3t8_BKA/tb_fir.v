`timescale 1ns / 1ps
module tb_fir;

	// Inputs
	reg clk;
	reg reset;
	reg [7:0] x;

	// Outputs
	wire [15:0] y;

	// Instantiate the Unit Under Test (UUT)
	fir8t4 uut (
		.clk(clk), 
		.reset(reset), 
		.x(x), 
		.y(y)
	);
	
	initial begin
clk=1'b0;reset=1'b1;
x=8'd1;reset=1'b0;


	end
	always
begin
#2 clk=~clk;
end
      
endmodule

