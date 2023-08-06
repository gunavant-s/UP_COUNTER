`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 06.08.2023 06:52:02
// Design Name: 
// Module Name: tb_up_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_up_counter;
    reg clk;
    reg reset;
    //parameter N = 4;
    wire [3:0]count;
    
    
    up_counter DUT (.clk(clk),
                   .reset(reset),
                   .count(count)
                   );
    
    initial begin
        clk = 0;
        reset = 1;
        #20
        reset = 0;
    end
    
    always #5 clk = ~clk; 
    
endmodule
