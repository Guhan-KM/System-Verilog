module _1D_packed_array;
  bit [4] a;
  bit[3:0] b; // both [4] and [3:0] are same 
  initial
    begin
      a = 'b1010;
      b = 'b11000101;
      
      foreach(a[i]) begin
        $display("value of a[%0d] = [%0b]",i,a[i]);
      end
      
      foreach(b[i]) begin
        $display("value of b[%0d] = [%0d]",i,b[i]);
      end
    end
endmodule
