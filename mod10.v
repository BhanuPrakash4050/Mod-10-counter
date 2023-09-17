`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 09:32:20
// Design Name: 
// Module Name: mod10
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


module mod10(clk,rst,count);
input clk,rst;
output reg [3:0]count;

always @(posedge clk or posedge rst)
begin
if (rst)
begin
count<= 4'b0000;
end
else
begin
if (count==4'b1001)
begin
count<=4'b0000;
end
else
begin
count<=count+1;
end
end
end 
endmodule
