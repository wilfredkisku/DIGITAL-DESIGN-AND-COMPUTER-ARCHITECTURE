module blink_led (
    input clk_p,
    input clk_n,
    output reg led
);

// Differential input buffer for clock input
IBUFDS #(
    .DIFF_TERM("TRUE"),
    .IOSTANDARD("LVDS_25")
) ibufds_clk (
    .I(clk_p),
    .IB(clk_n),
    .O(clk)
);

// 32-bit counter to divide clock frequency by 32 million
reg [31:0] count = 0;
parameter COUNT_MAX = 32000000;

// Blink the LED at a frequency of 2 Hz
always @(posedge clk) begin
    if (count == COUNT_MAX) begin
        led <= ~led;
        count <= 0;
    end else begin
        count <= count + 1;
    end
end

endmodule
