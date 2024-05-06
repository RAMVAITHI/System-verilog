module case_with_x (
  input logic [1:0] case_sel,
  output logic		case_z_o,
  output logic		case_x_o,
  output logic		case_inside_o
);
  
 
  always_comb begin
    casez (case_sel)
      2'b?0   : case_z_o = 1'b1;
      2'b11   : case_z_o = 1'b1;
      default : case_z_o = 1'bx;
    endcase
  end
  

  always_comb begin
    casex (case_sel)
      2'b?0   : case_x_o = 1'b1;
      2'b11   : case_x_o = 1'b1;
      default : case_x_o = 1'bx;
    endcase
  end
  
 
  always_comb begin
    case (case_sel) inside
      2'b?0   : case_inside_o = 1'b1;
      2'b11   : case_inside_o = 1'b1;
      default : case_inside_o = 1'bx;
    endcase
  end
  
endmodule
