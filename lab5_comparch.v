module lab5_comparch(addr, wrEn, clk, Din, Dout, cs);
		
		input [5:0] addr;
		input [7:0] Din;
		output reg [7:0] Dout;
		
		input cs;
		input wrEn;
		input clk;
		
		reg [7:0] memory [63:0]; //64 locations

		always @(posedge clk) begin
			if(wrEn == 1 && cs == 1) 
            memory[addr] <= Din;
        end
		  
		always @(posedge clk) begin
			if(wrEn == 0 && cs == 1) 
				Dout <= memory[addr];
		end

endmodule
				
		
		