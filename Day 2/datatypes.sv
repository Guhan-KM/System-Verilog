module datatypes;
 integer a;
  int b;
  shortint c;
  longint d;
  logic[7:0] a1; //logic is user defined vector
  logic signed[7:0] s1;
  byte b1;
  reg [7:0] r1;
  time time_data;
  real real_data;
  
  initial
    begin
      a = 'hxxzz_ffff;
      b = -1;
      c = 'hfxfx;
      d = 'hffff_xxxx_zzzz_ffff;
      a1 = -1;
      s1 = -1;
      b1 = 'd2;
      r1 = 8'bxzxz_0101;
      time_data = $time;
      real_data = 5.33; 
      
      #10
      $display("\ninteger a = %0h",a);
      $display("int b = %0d",b);
      $display("shortint c = %0h",c);
      $display("longint d = %h",d);
      $display("logic a1 = %b",a1);
      $display("logic signed s1 = %d",s1);
      $display("byte b1 = %b",b1);
      $display("reg r1 = %b",r1);
      #20
      $display("time time_data = %0t",$time);
      $display("real real_data = %f",real_data);
      // %f means you are printing a floating point number
      // %f prints 6 digits(default display for floating point)after decimal point
      $display("real real_data = %0.3f",real_data);
      // it shows 3 values after decimal point bcz of 0.3
      
      real_data = 0.1234567;
      $display("real real_data = %0.5f",real_data);
      //it will omint 5 bcz of rounding rule, .5 means display 5 digit after point
      
      $display("\n");
           
    end
endmodule
      
