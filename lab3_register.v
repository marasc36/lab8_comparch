//register
module lab3_register (L, Q, D, R, clock);
	parameter N = 32;
	output reg [N-1:0]Q;
	input [N-1:0]D;
	input L;
	input R;
	input clock;
		
	always @(posedge clock or posedge R) 
	begin
		if(R)
			Q <= 0;
		else if(L)
			Q<= D;
		else 
			Q <= Q;
	end
endmodule	



