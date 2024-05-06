module case_with_x_tb ();
  
  logic [1:0] case_sel;
  logic       case_z_o;
  logic 	  case_x_o;
  logic 	  case_inside_o;
  
  case_with_x CX (.*);
  
  initial begin
    case_sel = 2'b00;
    #5;
    case_sel = 2'b11;
    #5;
    case_sel = 2'bx0;
    #5;
    case_sel = 2'b0x;
    #5;
    case_sel = 2'bxx;
    #5;
    case_sel = 'z;
    #5;
    $finish();
  end
  
  initial begin
    $monitor ("%t\tcase_sel=2'b%2b\tcase_z_o=1'b%1b\tcase_x_o=1'b%1b\tcase_inside_o=1'b%1b", $time, case_sel, case_z_o, case_x_o, case_inside_o);
  end
  
endmodule
