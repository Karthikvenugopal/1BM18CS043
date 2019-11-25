module fa(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s = a^b^cin;
assign cout = (a&b)|(b&cin)|(cin&a);
endmodule

module fa_test;
reg a,b,cin;
wire s,cout;
fa f1(a,b,cin,s,cout);
initial
begin
$dumpfile("test.vcd");
$dumpvars(0,fa_test);
{a,b,cin} = 3'b000;
repeat(7)
#20 {a,b,cin} = {a,b,cin} + 3'b001;

//a = 1; b = 1;cin =0;
//#5
//a = 1; b = 1;cin =1;
//#5
//a = 0; b = 1;cin =0;
//#100
#20 $finish;
end
endmodule