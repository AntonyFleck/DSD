
`timescale 1ns/1ns
`include "q2.v"

module q2_tb();
  parameter n = 8;
  reg [n-1:0] i;
  reg clk;
  wire [n-1:0] a;

  q2 u (
    .i(i),
    .clk(clk),
    .a(a)
  );

  initial begin
    clk = 0;
    // Initial delay for some setup time
    #10;

    // Clock generation
    forever #10 clk = ~clk;
  end

  initial begin
    $dumpfile("q2_tb.vcd");
    $dumpvars(0, q2_tb);
    
    // Apply input values at specific times
    i = 8'b11001000; #10;
    i = 8'b00010001; #10;
    i = 8'b11110110; #10;
    i = 8'b01111001; #10;
    i = 8'b11011000; #10;
    i = 8'b11001100; #10;
    i = 8'b11001010; #10;
    i = 8'b11101000; #10;

    // Allow some time for simulation
    #100;
    
    $finish;
  end
endmodule
