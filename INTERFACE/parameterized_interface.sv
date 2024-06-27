interface uc #(parameter N = 8);
  logic [N-1:0] count;
    logic clk, reset;
endinterface

module ctr(uc inf);
  always @(posedge inf.clk)
     begin
    
       if(inf.reset)
       inf.count<= 3'd0;
       else
         inf.count <= inf.count + 3'd1;
     end 
    endmodule
