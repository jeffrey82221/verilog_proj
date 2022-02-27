
//this modulte rander the in1 and in2 value into an sorted pair - out1, out2.
module swape(in1,in2,out1,out2);

input [7:0] in1,in2;
output [7:0] out1,out2;

assign out1 = (in1<in2)?in1:in2;
assign out2 = (in1>=in2)?in1:in2;


endmodule