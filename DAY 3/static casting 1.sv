module casting;
  real ra;
  int ia;
  initial begin
  ra=(2.1*3.2);
  ia= int'(2.1*3.2);
  $display("ra=%0f,ia=%0d",ra,ia);
  end
endmodule
