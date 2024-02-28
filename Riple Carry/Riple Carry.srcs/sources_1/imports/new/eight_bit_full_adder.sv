`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 10:10:28
// Design Name: 
// Module Name: eight_bit_full_adder
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


module eight_bit_full_adder(

input logic sw [16:0],
output logic LED [8:0]
    );


    logic cout_bit0;

    // Primer sumador de 4 bits
    four_bit_full_adder first_adder (.A0(sw[0]), .B0(sw[1]), .A1(sw[2]), .B1(sw[3]),.A2(sw[4]), .B2(sw[5]), .A3(sw[6]), .B3(sw[7]),.Cin(sw[8]), .s0(LED[0]), .s1(LED[1]), .s2(LED[2]), .s3(LED[3]), .cout(cout_bit0));
    
    // Segundo  sumador de 4 bits
    four_bit_full_adder second_adder (.A0(sw[9]), .B0(sw[10]), .A1(sw[11]), .B1(sw[12]),.A2(sw[13]), .B2(sw[14]), .A3(sw[15]), .B3(sw[16]),.Cin(cout_bit3), .s0(LED[4]), .s1(LED[5]), .s2(LED[6]), .s3(LED[7]), .cout(LED[8]));
    
endmodule
