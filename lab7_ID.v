module lab7_ID(in, rd, rs1, rs2);
	input [31:0] in;
	output reg [4:0] rd;
	output reg [4:0] rs1;
	output reg [4:0] rs2;
	
	always @(in)
	begin
		case (in)
			
			32'h00450693: begin
				rd = in[11:7];
			   rs1 = in[19:15];
			end
			
			32'h00100713: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'h00b76463: begin
			rs1 = in[19:15];
			rs2 = in[24:20];
			end
			
			32'h00008067: begin 
			rd = in[11:7];
			end
			
			32'h0006a803: begin 
			rd = in[11:7];
			rs1 = in[19:15];	
			end
			
			32'h00068613: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'h00070793: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'hffc62883: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'h01185a63: begin
			rs2 = in[24:20];
			rs1 = in[19:15];
			end
			
			32'h01162023: begin 
			rs2 = in[24:20];
			rs1 = in[19:15];
			end
			
			32'hfff78793: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'hffc60613: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'hfe0796e3: begin
			rs2 = in[24:20];
			rs1 = in[19:15];
			end
			
			32'h00279793: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'h00f507b3: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			rs2 = in[24:20];
			end 
			
			32'h0107a023: begin 
			rs2 = in[24:20];
			rs1 = in[19:15];
			end
			
			32'h00170713: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'h00468693: begin 
			rd = in[11:7];
			rs1 = in[19:15];
			end
			
			32'hfc1ff06f: begin 
			rd = in[11:7];
			end
	
		endcase
	end
endmodule
