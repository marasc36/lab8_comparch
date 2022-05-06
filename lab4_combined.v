module lab4_combined(A, B, cin, opcode, status, F, c);

input [31:0] A;
input [31:0] B;
input [4:0] c;
input cin;
input [2:0] opcode;

output [3:0] status;
output [31:0] F;
wire [3:0] status;
wire [31:0] F;

wire [31:0] xout, andout, orout, norout;
wire [31:0] s;
wire [31:0] In8;

assign xout = A^B;
assign andout = A&&B;
assign orout = A||B;
assign norout = ~A||B;
   
callAdder dd(A, B, cin, status[3], s);

assign status[0] = (F == 32'b0)?1:0;
assign status[1] = F[31];
assign status[2] = (~(A[31] ^ B[31]) & (A[31]^F[31]));


/*lab4_shifter shift_1 (A, B, L, R);
wire [31:0] L, R;

assign c = B[4:0];

assign L = A << c;
assign R = A >> c; */
	

lab4_mux uu( F,

  opcode,
  xout,
  andout,
  orout,
  norout,
  s,
  L,
  R,
  In8);

  
  endmodule
  
