`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2019 19:44:22
// Design Name: 
// Module Name: TB_Hard
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


module TB_Hard(

    );
    
    
        reg clk, reset;
    
    
    TestHarness UO(

    .clock(clk),
    .reset(reset),
    .io_success(success)
      );
    
    initial
    begin
        clk = 0;
        reset = 1;
    end
    
    always
        begin
        clk = 1; #5; clk = 0; #5;
        end
    
    
    always
        begin
        #200; reset = 0; //#200; reset = 0; #5;
        #1000000000;
        $stop;
        end
    
    
    
endmodule

