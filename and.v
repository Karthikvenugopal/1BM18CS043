module and_gate(a, b, y);
input a, b;
output y;
and andg(y, a, b );
endmodule

module testand;
reg a, b;
wire y;
and_gate andg(a, b, y);
initial
begin
	$dumpfile("test.vcd");
	$dumpvars(0,testand);
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
