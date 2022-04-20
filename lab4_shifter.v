module lab4_shifter(in, c, left, right);
	input [31:0]in;
	input [4:0]c;
	output [31:0]left, right;
	reg [31:0]left, right;
	
	initial
	
		begin
		left = in << c;
		right = in >> c;
		end
	
endmodule
