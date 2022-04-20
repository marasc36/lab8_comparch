module lab5_top(addr, wrEn, clk, Din, Dout);
		
		input [7:0] addr;
		input [31:0] Din;
		output [31:0] Dout;
		//input [1:0]select;
		input clk;
		
		input wrEn;
		
		wire [31:0] outWire1, outWire2, outWire3, outWire4;
		wire [3:0] cs;

			
		lab5_decoder csNew (addr[7:6],cs);
		
		
		lab5_comparch r11(addr[5:0], wrEn, clk, Din[31:24], outWire1[31:24], cs[0]);
		lab5_comparch r12(addr[5:0], wrEn, clk, Din[23:16], outWire1[23:16], cs[0]);
		lab5_comparch r13(addr[5:0], wrEn, clk, Din[15:8], outWire1[15:8], cs[0]);
		lab5_comparch r14(addr[5:0], wrEn, clk, Din[7:0], outWire1[7:0], cs[0]);
		
		assign Dout = cs[0]? outWire1: 'bz;
		
		lab5_comparch r21(addr[5:0], wrEn, clk, Din[31:24], outWire2[31:24], cs[1]);
		lab5_comparch r22(addr[5:0], wrEn, clk, Din[23:16], outWire2[23:16], cs[1]);
		lab5_comparch r23(addr[5:0], wrEn, clk, Din[15:8], outWire2[15:8], cs[1]);
		lab5_comparch r24(addr[5:0], wrEn, clk, Din[7:0], outWire2[7:0], cs[1]);
		
		assign Dout = cs[1]? outWire2: 'bz;
		
		lab5_comparch r31(addr[5:0], wrEn, clk, Din[31:24], outWire3[31:24], cs[2]);
		lab5_comparch r32(addr[5:0], wrEn, clk, Din[23:16], outWire3[23:16], cs[2]);
		lab5_comparch r33(addr[5:0], wrEn, clk, Din[15:8], outWire3[15:8], cs[2]);
		lab5_comparch r34(addr[5:0], wrEn, clk, Din[7:0], outWire3[7:0], cs[2]);
		
		assign Dout = cs[2]? outWire3: 'bz;
		
		lab5_comparch r41(addr[5:0], wrEn, clk, Din[31:24], outWire4[31:24], cs[3]);
		lab5_comparch r42(addr[5:0], wrEn, clk, Din[23:16], outWire4[23:16], cs[3]);
		lab5_comparch r43(addr[5:0], wrEn, clk, Din[15:8], outWire4[15:8], cs[3]);
		lab5_comparch r44(addr[5:0], wrEn, clk, Din[7:0], outWire4[7:0], cs[3]);
		
		assign Dout = cs[3]? outWire4: 'bz;
		
endmodule
