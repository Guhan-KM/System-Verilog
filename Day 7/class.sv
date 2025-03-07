class example;
  bit[31:0] s_addr;
  bit[31:0] e_addr;
  function new();
    s_addr = 8'd25;
    e_addr = 16'haabb;
  endfunction

function void display();
  $display("\t s_addr = %b",s_addr);
  $display("\t e_addr = %b",e_addr);
endfunction
  endclass

module tb;
  example exm1;
initial 
  begin
    exm1 = new();
    $display("---------exm1 display-----------");
    exm1.display();
    $display("---------------------------");
  end
endmodule


sim_output
# KERNEL: ---------exm1 display-----------
# KERNEL: 	 s_addr = 00000000000000000000000000011001
# KERNEL: 	 e_addr = 00000000000000001010101010111011
# KERNEL: ---------------------------
