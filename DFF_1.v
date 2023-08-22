/*
   Created by : Mohamed Hazem Mamdouh
   12-08-2023
   7:30 PM
 */
//***************  DFF WITH PRESET  ***************//

module DFF_1 (D,clk,reset,Q);
input D; // Data input 
input clk; // clock input 
input reset; // synchronous reset 
output reg Q; // output Q 



always @(posedge clk or negedge reset ) 
begin
 if(!reset)
  Q <= 1'b1; 
 else 
  Q <= D; 
end 
endmodule