module carry_lookahead_adder_testbench();
    
    reg [3:0] A, B;
    reg CIN;
    wire [3:0] SUM;
    wire COUT;
    
    carry_lookahead_adder UUT (.A(A), .B(B), .CIN(CIN), .SUM(SUM), .COUT(COUT));
    
    initial begin
        $monitor($time, " A=%b, B=%b, CIN=%b, SUM=%b, COUT=%b", A, B, CIN, SUM, COUT);
        
        A = 4'b0000; B = 4'b0000; CIN = 0; #5;
        A = 4'b0001; B = 4'b0000; CIN = 0; #5;
        A = 4'b0000; B = 4'b0001; CIN = 0; #5;
        A = 4'b0001; B = 4'b0001; CIN = 0; #5;
        A = 4'b1111; B = 4'b0001; CIN = 0; #5;
        A = 4'b1100; B = 4'b0010; CIN = 1; #5;
        A = 4'b0111; B = 4'b1111; CIN = 1; #5;
        
        $finish;
    end
    
endmodule
