module mux_8x8_testbench();

    reg [7:0] data0, data1, data2, data3, data4, data5, data6, data7;
    reg [2:0] sel;
    wire [7:0] out;

    mux_8x8 UUT (.data0(data0), .data1(data1), .data2(data2), .data3(data3),
                 .data4(data4), .data5(data5), .data6(data6), .data7(data7),
                 .sel(sel), .out(out));

    initial begin
        $monitor($time, " data0=%h, data1=%h, data2=%h, data3=%h, data4=%h, data5=%h, data6=%h, data7=%h, sel=%b, out=%h", 
                 data0, data1, data2, data3, data4, data5, data6, data7, sel, out);
        
        // Test case 1
        data0 = 8'h12; data1 = 8'h34; data2 = 8'h56; data3 = 8'h78;
        data4 = 8'haa; data5 = 8'hbb; data6 = 8'hcc; data7 = 8'hdd;
        sel = 3'b000; #5;
        
        // Test case 2
        data0 = 8'h12; data1 = 8'h34; data2 = 8'h56; data3 = 8'h78;
        data4 = 8'haa; data5 = 8'hbb; data6 = 8'hcc; data7 = 8'hdd;
        sel = 3'b010; #5;
        
        // Test case 3
        data0 = 8'h12; data1 = 8'h34; data2 = 8'h56; data3 = 8'h78;
        data4 = 8'haa; data5 = 8'hbb; data6 = 8'hcc; data7 = 8'hdd;
        sel = 3'b111;

	$finish;
end
endmodule
