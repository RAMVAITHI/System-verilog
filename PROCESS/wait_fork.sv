module wait_fork();
  
  event e1;
  string a = "Malpe";
  string b = "kudlu";
  string c;
  
  initial begin:BEGIN_B1 
    
    #1 $display("[%0t] Thread_T1: values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 
    
    fork:FORK_F1 
    
      #2 b <= "Delta";
      #0 $display("[%0t] Thread_T2: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
                
      begin:BEGIN_B2 
        //$display(" [%0t] et",$time);
        #1 -> e1;
        c = "Hoode";
        #1 $display("[%0t] Thread_T3: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end:BEGIN_B2
      
      fork:FORK_F2 
        wait(e1.triggered);
        #2 $display("[%0t] Thread_T4: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      join:FORK_F2
      
      #1 $display("[%0t] Thread_T5: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
    join_none:FORK_F1
    
    wait fork;
    #0 $monitor("[%0t] Thread_T6: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
  
  end:BEGIN_B1

endmodule:wait_fork
