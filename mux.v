module mux4to1(a,b,d0,d1,d2,d3,y);
input a,b,d0,d1,d2,d3;
output y;
assign y = a ? ( b ? d3 : d2):(b ? d1 : d0);
endmodule