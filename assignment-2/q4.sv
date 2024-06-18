class H;
    static int addr;
  
    function new();
        addr++;
    endfunction
  
    static function void display();
      $display("addr value =%0d",addr);
        endfunction
endclass



module static_properties;
  parameter N=10;
 H pkt[N];

  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
      pkt[i].display();
    end
  end  
endmodule
