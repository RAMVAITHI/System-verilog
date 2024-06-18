class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf,mailbox mail);
    this.vintf=vintf;
    this.mail=mail;
  endfunction
  
  task drive;
      
   repeat(8)
      begin
        
        pkt=new();
        mail.get(pkt);
      vintf.din = pkt.din;
      vintf.addr = pkt.addr;
      vintf.cs = pkt.cs;
      vintf.we = pkt.we;
      vintf.rd = pkt.rd;
      vintf.clk = pkt.clk;
      pkt.dout = vintf.dout;
     // pkt.sram_out = vintf.sram_out;
    end
  endtask
endclass
