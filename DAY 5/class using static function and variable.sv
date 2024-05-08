class packet;
  static byte packet_id;
  
  function new();
    packet_id++;
  endfunction
   
 static function void display();
    $display(" packet_id  = %0d",packet_id);
     endfunction 
endclass

module static_properties;
  packet pkt[10];
  
  initial begin
    foreach(pkt[i]) begin
      pkt[i] = new();
      pkt[i].display();
    end
  end  
endmodule
