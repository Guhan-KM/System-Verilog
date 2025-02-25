module two_dimensional_unpacked;
  logic array [2][4];
	initial begin
    foreach (array[i])
      foreach (array[i][j]) begin
            array[i][j] = $random;
        $display ("array[%0d][%0d] = 0x%0h", i, j, array[i][j]);
      end
    $display ("array = %p", stack);
	end
endmodule
