module lab7_off(in, offset, out, cout);
	input [7:0] in,offset;
	output [7:0] out;
	output cout;
	wire cin;

	
	assign {cout, out} = in + offset + cin;
	
endmodule 
