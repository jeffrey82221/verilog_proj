module numOfBit #(parameter DATA_WIDTH=1024)(in, amount);
    input [DATA_WIDTH-1:0]in;
    output reg [$clog2(DATA_WIDTH):0]amount;
    
    wire [DATA_WIDTH-1:0]dicisionArray;
    wire [DATA_WIDTH-1:0]oneHotArray;
    integer i = 0;

	integer tmp = 1;    
    // Generate block : 
    genvar n; 
    generate 
    	for (n = 0; n < DATA_WIDTH; n = n+1) 
    		begin // Structures to generate 
    			assign dicisionArray[n]=(in[DATA_WIDTH-1:n]==0);
    		end 
    endgenerate

    // Generate block : 
    genvar m; 
    generate 
    	for (m = 1; m <= DATA_WIDTH-1; m = m+1) 
    		begin // Structures to generate 
    			 assign  oneHotArray[m-1]= dicisionArray[m]^dicisionArray[m-1];
    		end 
    
    endgenerate
    assign  oneHotArray[DATA_WIDTH-1]= in[DATA_WIDTH-1];

    // onehot to binary decoder

    always @ (*)
        begin
            for (i = 0;i <= DATA_WIDTH; i = i + 1)
                begin

                    if(oneHotArray == tmp<<i)
                    amount = i+1;

                    end
            if(oneHotArray ==0)
            	amount = 0;
        end
endmodule