class packet;
 static string id;
  static int data;
  static bit[3:0] addr;
  static bit [2:0]mode;
  function new();
   this.id= "subject";
   /* this.data = 10;
    this.addr = 35;
    this.mode = 1;*/
    data++;
    addr++;
    mode++;
     
  endfunction
  
  static function void display();
    $display("id= %s,data= %0d,addr= %0d ,mode= %0d          ",id,data,addr,mode);
  endfunction
endclass

module testbench;
initial begin
  packet pkt[4];
  
  begin
    for (int i = 0; i < 4; i++) begin
      pkt[i] = new();
      pkt[i].display();
    end
    end
end
endmodule
