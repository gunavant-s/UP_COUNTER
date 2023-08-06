`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 06.08.2023 06:35:47
// Design Name: 
// Module Name: up_counter
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


module up_counter (input clk,
                  input reset,
                  output reg [3:0] count);
                 
     always @(posedge clk or posedge reset) begin
        if(reset)
            count <= 0;
        else
            count <= count + 1;
     end
     
endmodule
