module blinky #(parameter clk_freq_hz = 0) (input  clk, output reg q = 1'b0);

   reg [$clog2(clk_freq_hz)-1:0] count = 0;

   always @(posedge clk) begin
      count <= count + 1;
      if (count == clk_freq_hz-1) begin
	 q <= !q;
	 count <= 0;
      end
   end

endmodule


module blinky_pynq_z2
  (input wire  clk,
   output wire q);

   wire        clk;

   blinky #(.clk_freq_hz (125_000_000)) blinky
     (.clk (clk),
      .q   (q));

endmodule
