class shallow;
  bit[31:0] s_addr;
  bit[31:0] e_addr;
  function new();
    s_addr = 16'd100;
    e_addr = 32'd500;
  endfunction
  endclass
  
  class copy;
    shortint abc;
    shortint abd;
    shallow shlw;
    function new();
      abc = 16'd20000;
      abd = 16'b1010100010100010;// this output will be in - (minus) bcz shortint is signed and 16/2= 8 bit so 8bit will be + & 8bit will be -)
      shlw = new();
    endfunction
  
    function void display();
      $display("-----------------------");
      $display("s_addr = %d",shlw.s_addr);
      $display("e_addr = %d",shlw.e_addr);
      $display("abc = %d",abc);
      $display("abd = %d",abd);
      $display("-----------------------");
    endfunction
  endclass

module tb;
  copy cpy1,cpy2;
  initial
    begin
      cpy1 = new();
      $display("------cpy1 display-----");
      cpy1.display();
      
      cpy2 = new cpy1;
      $display("------cpy2 display-----");
      cpy2.display();
      
      cpy1.abc = 16'd150;
      cpy1.abd = 16'd200;
      cpy2.shlw.s_addr = 16'd250;
      cpy2.shlw.e_addr = 16'd300;
      
      $display("------cpy1 display after changing values-----");
      cpy1.display();
      
      $display("------cpy2 display after changing values-----");
      cpy2.display();
      
      cpy2.abc = 16'd350;
      cpy2.abd = 16'd400;
      cpy2.shlw.s_addr = 16'd150;
      cpy2.shlw.e_addr = 16'd200;
      $display("------cpy2 display after changing values-----");
      cpy2.display();
      $display("------cpy1 display after changing values-----");
      cpy1.display();
      
      
    end
endmodule
