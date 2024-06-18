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
        vintf.d=pkt.d;
        vintf.clk=pkt.clk;
        vintf.rst=pkt.rst;
        pkt.q=vintf.q;
       pkt.qb=vintf.qb;
     
      end
  endtask
endclass
