module array_reduction;
  int array[];  // Dynamic array
  int result;   // Single integer variable bcz array reduction gives only single integer so int result[$] causes error

  initial begin
    
    array = '{1, 2, 3, 4, 5};

    result = array.sum();
    $display("Sum: %0d", result);

    result = array.product();
    $display("Product: %0d", result);

    result = array.and();
    $display("AND Reduction: %0d", result);

    result = array.or();
    $display("OR Reduction: %b", result);

    result = array.xor();
    $display("XOR Reduction: %0d", result);
  
  end
endmodule
