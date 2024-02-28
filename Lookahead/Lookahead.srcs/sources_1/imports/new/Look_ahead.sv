`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 05:05:50
// Design Name: 
// Module Name: Look_ahead
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


module Look_ahead(
    input logic A, B, Cin,
    output logic P, G, Cout
);

    // Generación de las salidas del Full Adder
    assign P = A ^ B;       // Suma bit a bit
    assign G = A & B;       // Generación de acarreo
    assign Cout = G | (P & Cin); // Cálculo del acarreo de salida);

endmodule