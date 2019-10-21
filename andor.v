module and_or(a, b, c, d, y);
input a, b, c, d;
output y;
wire w1, w2;
and and_or1(w1, a, b);
and and_or2(w2, c, d);
or and_or3(y, w1, w2);
endmodule

module andor;
reg a, b, c, d;
wire y;
and_or andorg(a, b, c, d, y);
initial 
begin
	$dumpfile("andor.vcd");
	$dumpvars(0, andor);
	a = 0; b = 0; c = 0; d = 0;
	#20
	a = 0; b = 0; c = 0; d = 1;
	#20
	a = 0; b = 0; c = 1; d = 0;
	#20
	a = 0; b = 0; c = 1; d = 1;
	#20
	a = 0; b = 1; c = 0; d = 0;
	#20
	a = 0; b = 1; c = 0; d = 1;
	#20
	a = 0; b = 1; c = 1; d = 0;
	#20
	a = 0; b = 1; c = 1; d = 1;
	#20
	a = 1; b = 0; c = 0; d = 0;
	#20
	a = 1; b = 0; c = 0; d = 1;
	#20
	a = 1; b = 0; c = 1; d = 0;
	#20
	a = 1; b = 0; c = 1; d = 1;
	#20
	a = 1; b = 1; c = 0; d = 0;
	#20
	a = 1; b = 1; c = 0; d = 1;
	#20
	a = 1; b = 1; c = 1; d = 0;
	#20
	a = 1; b = 1; c = 1; d = 1;
	#20
	$finish;
end
endmodule