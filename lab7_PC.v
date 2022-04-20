module lab7_PC( out, clk, reset, select,offset, cout);

	input clk;
	input reset;
	input select;
	output cout;
	
	input [7:0] offset;
	output [7:0] out;
	
	wire [7:0] pc_id_4,pc_id_f, pcout_d;
	
	lab7_ADD4 uut_1(pcout_d, pc_id_4);
	
	lab7_off uut_2(pcout_d, offset, pc_id_f, cout);
	
	
	mux2_2 uut3 (pc_id_4,pc_id_f,select,out);
	
	Lab7_PC_s UUT4 (clk, reset, pc_id_4,pcout_d);
	
endmodule
	
	
