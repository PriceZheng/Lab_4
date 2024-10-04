`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/25 01:50:06
// Design Name: 
// Module Name: MD
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


module MD(
input [4:0]i,
output wire l1,l2,l3,l4,l5
    );
    
//integer sum;
/*always @(*) begin
    sum = i;
    if (sum % 2 == 0)
        l1 = 1;
    else
        l1 = 0;

    if (sum % 3 == 0)
        l2 = 1;
    else
        l2 = 0;

    if (sum % 4 == 0)
        l3 = 1;
    else
        l3 = 0;

    if (sum % 5 == 0)
        l4 = 1;
    else
        l4 = 0;
    if (sum % 2 == 0 && sum % 3 ==0 && sum % 5 ==0)
        l5 = 1;
    else
        l5 = 0;
end*/
wire [4:0] sum;
assign sum = i;

assign l1 = (sum[0] == 1'b0);

assign l2 = (sum == 5'b00000 || sum == 5'b00011 || sum == 5'b00110 || sum == 5'b01001 || sum == 5'b01100 || 
             sum == 5'b01111 || sum == 5'b10010 || sum == 5'b10101 || sum == 5'b11000 ||
             sum == 5'b11011 || sum == 5'b11110);
             
assign l3 = (sum[1:0] == 2'b00);

assign l4 = (sum == 5'b00000 || sum == 5'b00101 || sum == 5'b01010 || sum == 5'b01111 || sum == 5'b10100 ||
              sum == 5'b11001 || sum == 5'b11110);

assign l5 = l1&&l2&&l4;

endmodule
