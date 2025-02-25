module oneD_packed_array;
  int array[5] = '{1,4,7,9,3};
  initial begin
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule
