module simple_tb;
reg [3:0] in;
reg dir;
wire [3:0] out;

simple simple(
.in(in),
.out(out),
.dir(dir)
);

initial
    begin
        $dumpfile("simple.vcd");
        $dumpvars;
        $monitor("in = %d,o = %d",in,out);
        #50 in = 4'b1; dir = 1'b1;
        
        #50 $finish;
    end
endmodule   
