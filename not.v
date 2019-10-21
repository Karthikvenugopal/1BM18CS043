module not_gate(a, y);
input a;
output y;
not notg(y, a );
endmodule

module testnot;
reg a;
wire y;
not_gate notg(a, y);
initial
begin
	$dumpfile("test3.vcd");
	$dumpvars(0,testnot);
	a = 1'b0;
	#20
	a = 1'b1;
	#20
	$finish;
end
endmodule
