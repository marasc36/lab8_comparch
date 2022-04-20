module lab7_comparch( pcOut, clk, reset, select, romOut, rd, rs1, rs2, offset, cout);
	input clk;
	input reset;
	input select;
	
	output [31:0] romOut;
	
	output [4:0] rd;
	output [4:0] rs1;
	output [4:0] rs2;
	
	input [7:0] offset;
	output [7:0] pcOut;
	output cout;
	

	lab7_PC pc_1 (pcOut, clk, reset, select,offset, cout);
	lab7_ROM rom_1 (romOut, pcOut);
	lab7_ID id_1 (romOut, rd, rs1, rs2);

endmodule
