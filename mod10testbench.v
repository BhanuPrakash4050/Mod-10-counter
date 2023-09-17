`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 09:50:49
// Design Name: 
// Module Name: mod10testbench
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


module mod10testbench();
wire [3:0] count;
reg clk,rst;
mod10 d1(.clk(clk),.rst(rst),.count(count));
initial
begin
clk=1'b0;
forever #5 clk =~clk;
end
initial
begin
rst=1;
#50 rst=0;
#500 $finish;
end
endmodule
