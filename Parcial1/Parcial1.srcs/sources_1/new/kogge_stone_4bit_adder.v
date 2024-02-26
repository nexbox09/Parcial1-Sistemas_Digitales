`timescale 1ns / 1ps

module kogge_stone_4bit_adder(
    input logic sw [8:0] ,    // Entradas A0 a B3 y Cin
    output logic LED0, LED1, LED2, LED3, LED4  //carreo de salida
);

Rojo rojo1_unit (.Ai(sw[1]), .Bi(sw[2]));


endmodule