module xor_gate(a,b,y);
input a,b;
output y;
xor xorg(y,a,b);
endmodule

module testxor;
reg a,b;
wire y;
xor_gate xorg(a,b,y);
initial
begin
	$dumpfile("testxor.vcd");
	$dumpvars(0,testxor);
	a = 1'b0; b = 1'b0;
	#20
	a = 1'b0; b = 1'b1;
	#20
	a = 1'b1; b = 1'b0;
	#20
	a = 1'b1; b = 1'b1;
	#20
	$finish;
end
endmodule
	