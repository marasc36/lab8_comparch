module Lab7_PC_s(clk, reset, pcin,pcout);
	input clk;
	input reset;
	
	
	input [7:0] pcin;
	output reg [7:0] pcout;
	
	
	
	always @(posedge clk)
	begin
		if(reset)
			pcout = 8'd0;
		else
			pcout = pcin;
	end
			
endmodule