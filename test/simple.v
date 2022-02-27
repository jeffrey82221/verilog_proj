module simple(in,out,dir);
	input  	[3:0] in;
	input 	dir;
	output reg  [3:0] out;

	reg 	[3:0] A;
	reg 	[3:0] B;
	
	
	always @* begin
		if(dir) begin
			A=in;
			B=A;
			out=B;
		end
		else begin
			B=in;
			A=B;
			out=A;
		end
	end


endmodule
