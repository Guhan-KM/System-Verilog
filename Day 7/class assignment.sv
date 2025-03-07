class packet;
  bit [31:0] addr;
  bit [7:0] data;

  function new();
    addr = 32'h111a_11f2;
    data = 8'b10100101;
  endfunction

  function void display();
    $display("\t addr  = %0d", addr); 
    $display("\t data  = %0h", data); 
  endfunction
endclass

module tb;
  
  packet pkt1;
  packet pkt2;

  initial begin
    pkt1 = new();
    $display("-----------------------------------------------");
    $display("packet1");
    pkt1.display();
    
pkt2 =pkt1;
    $display("packet2");
    pkt2.display();
    $display("-----------------------------------------------");
  end
endmodule




output
# KERNEL: -----------------------------------------------
# KERNEL: packet1
# KERNEL: 	 addr  = 286921202
# KERNEL: 	 data  = a5
# KERNEL: packet2
# KERNEL: 	 addr  = 286921202
# KERNEL: 	 data  = a5
# KERNEL: -----------------------------------------------
