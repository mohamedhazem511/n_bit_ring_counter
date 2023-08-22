/*
   Created by : Mohamed Hazem Mamdouh
   12-08-2023
   7:30 PM
 */
//***************  N-bit ring counter using generate statements (for generate )  ***************//

module n_bit_counter 
       # (parameter N = 4)
          ( input  wire clk,reset,
            output wire [N-1:0] q_o );



DFF_1 U0 (q_o[N-1],clk,reset,q_o[0]);

genvar i ;

  generate
    for ( i=1 ; i< N ; i = i + 1 )
	  begin
        DFF U (.D(q_o[i-1]),
                .clk(clk),
                .reset(reset),
                .Q(q_o[i])
        );
	  end
  endgenerate

 endmodule