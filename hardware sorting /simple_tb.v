module simple_tb;
reg [7:0] in1,in2,in3,in4;
wire [7:0] out1,out2,out3,out4;

sort sort(
.in1(in1),
.in2(in2),
.in3(in3),
.in4(in4),
.out1(out1),
.out2(out2),
.out3(out3),
.out4(out4)
);

initial
	begin
		$dumpfile("simple.vcd");
		$dumpvars;
		$monitor("o1 = %d,o2 = %d",out1,out2);
        #50 in1 = 13; in2 = 1;in3 = 23;in4 = 10;
        $monitor("o1 = %d,o2 = %d,o3= %d,o4 = %d",out1,out2,out3,out4);
		#50 $finish;
	end
endmodule	
