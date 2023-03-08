module encoder_tb;

reg en;
reg [31:0] in;
wire [4:0] out;

encoder32_5 encoder_uut(.en(en), .A(in), .Y(out));

initial begin
    $monitor("in = %b, out = %b, en = %b", in, out, en);
    $dumpfile("encoder.vcd");
    $dumpvars(0,encoder_tb);

    in = 4'b0000;
    en = 1'b1;
    #10;
    
    in = 4'b0001;
    #10;
    
    in = 4'b0010;
    #10;
    
    in = 4'b0011;
    #10;
    
    in = 4'b0100; // invalid input
    en = 1'b0;
    #10;
    
    in = 4'b1111; // invalid input
    en = 1'b1;
    #10;
    
    in = 32'b0000_0100_0000_0101_1111; // invalid input
    en = 1'b0;
    #10;    
    $finish;
end

endmodule

