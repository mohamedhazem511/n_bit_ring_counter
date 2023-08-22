/*
   Created by : Mohamed Hazem Mamdouh
   12-08-2023
   7:30 PM
 */
//***************  DFF WITH RESET  ***************//

module DFF (D,clk,reset,Q);
input D; // Data input 
input clk; // clock input 
input reset; // synchronous reset 
output reg Q; // output Q 

always @(posedge clk or negedge reset) 
begin
 if(!reset)
  Q <= 1'b0; 
 else 
  Q <= D; 
end 
endmodule