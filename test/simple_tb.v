module simple_tb;

parameter DATA_WIDTH=16;
reg [DATA_WIDTH-1:0]in;
wire [$clog2(DATA_WIDTH):0]amount;
//wire [DATA_WIDTH-1:0]dicisionArray;
//wire [DATA_WIDTH-1:0]oneHotArray;

numOfBit #(16) U_numOfBit
(in, amount);


initial
    begin
        $dumpfile("simple.vcd");
        $dumpvars;
        $monitor("input = %b,amount of divider length = %d ",in,amount);
        #50 in = 16'b0000000000000000;
        #50 in = 16'b0000100011111111;
        #50 in = 16'b1000001011011111;
        #50 in = 16'b0001000011111111;
        #50 in = 16'b0000001011111111;
        #50 in = 16'b0100010011111111;
        #50 $finish;
    end
endmodule   