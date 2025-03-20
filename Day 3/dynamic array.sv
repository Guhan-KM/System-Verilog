module dynamic_array;
  int a[];
  int b[];
  initial begin
    
    $display("size of array a b4 resize = %0d",a.size());
    $display("size of array b b4 resize = %0d",b.size());
    
 a = new[4];
 b = new[5];
    
    a = {3,4,5,6};
    b = {0,9,8,7};
    
    $display("size of array a after resize = %0d",a.size());
    $display("size of array b after resize = %0d",b.size());
    
 foreach(a[i])

    $display("value of a[%0d] = [%0d]",i,a[i]);
    $display("");
    
 foreach(b[i])
    $display("value of b[%0d] = [%0d]",i,b[i]);
    
 a = new[3](a);
   
 foreach(a[i])
      $display("\tvalue of a[%0d] = [%0d]",i,a[i]);
    $display("");
    
 a.delete();
    $display("size of array a after deleting = %0d",a.size());
    
 b = new[6];
    
    foreach(b[i])
      $display("value of b[%0d] = [%0d]",i,b[i]);
       
  end
endmodule
