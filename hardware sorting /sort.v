
//this modulte rander the in1 and in2 value into an sorted pair - out1, out2.
module sort(in1,in2,in3,in4,out1,out2,out3,out4);

input [7:0] in1,in2,in3,in4;
output [7:0] out1,out2,out3,out4;

wire [7:0] a1,a2,a3,a4,
	   b2,b3;
//first merge
swape swape11(
.in1(in1),
.in2(in2),
.out1(a1),
.out2(a2)
);
swape swape12(
.in1(in3),
.in2(in4),
.out1(a3),
.out2(a4)
);
//second merge
swape swape21(
.in1(a1),
.in2(a3),
.out1(out1),
.out2(b3)
);
swape swape22(
.in1(a2),
.in2(a4),
.out1(b2),
.out2(out4)
);
//final merge
swape swape3(
.in1(b2),
.in2(b3),
.out1(out2),
.out2(out3)
);



endmodule