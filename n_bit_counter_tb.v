module n_bit_counter_tb;  
  parameter WIDTH = 4;  
    
  reg clk;  
  reg reset;
   
  wire [WIDTH-1:0] q_o;  
    
  n_bit_counter  u0 (.clk(clk),  
                .reset(reset),  
                .q_o(q_o));  
    
  always #10 clk = ~clk;  
    
  initial begin  
    clk = 0; 
    reset = 0;
    #10
    reset =1;  
  
    $monitor ("T=%0t out=%b", $time, q_o);  
    repeat (2) @(posedge clk);  
    reset <= 1;
    repeat (15) @(posedge clk);  
    $stop;  
  end  
endmodule 
