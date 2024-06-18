class generator;
  transaction pkt;
  mailbox mail;
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  
  task gene;
   begin
        pkt = new();
        mail.put(pkt);
        $display("Packet is generated");
      end
  endtask
endclass
