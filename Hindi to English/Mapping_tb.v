`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:39:02 12/02/2016
// Design Name:   C2_mapping
// Module Name:   E:/Translation/Mapping_tb.v
// Project Name:  Translation
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: C2_mapping
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

/* 
 d davaat	1010011
 a				0000000	
 r rssi		1011100
 a				0000000
 v				1011110
 aa			0000001
 j				1000111
 aa			0000001
 
 d				1000010
 a				0000000
 r				1001101
 v				1010000
 aa			0010101
 j				1000110
 aa			0010101
  
*/
module Mapping_tb;
	reg clock;	// Inputs
	reg [6:0] hindi;
	// Outputs
	wire [6:0] r5;

	// Instantiate the Unit Under Test (UUT)
	C2_mapping uut (
		.hindi(hindi),
		.clock(clock),
		.r5(r5)
	);

	initial begin
		// Initialize Inputs
		clock=0;
		hindi = 7'b1010011;
		// Wait 100 ns for global reset to finish
		#50;
        hindi =7'b0000000;
		#50;
        hindi =7'b1011100;
		#50;
        hindi =7'b0000000;
		#50;
        hindi =7'b1011110;
		#50;
        hindi =7'b0000001;
		#50;
        hindi =7'b1000111	;
		#50;
        hindi =7'b0000001	;
		#50;
        hindi =7'b0110000	; //' '
		// Add stimulus here

	end
	
	always 
	#25 clock=~clock;
      
endmodule

