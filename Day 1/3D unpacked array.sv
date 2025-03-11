module _3D_packed_array;
   byte unsigned a[2:0][3:0][2:0];
  initial
    begin
      
//       foreach(a[i]) begin
//         foreach(a[i][j])begin
//           foreach(a[i][j][k])begin
//             $display("value of a[%0d][%0d][%0d] = [%0d]",i,j,k,a[i][j][k]);
//           end
//         end
//       end
//     end
      
      for(int i=0; i<3; i++) begin
        for(int j=0; j<4; j++) begin
          for(int k=0; k<3; k++) begin
            a[i][j][k] = $random;
       $display("value of a[%0d][%0d][%0d] = [%0d]",i,j,k,a[i][j][k]);
            //$display("random value =%0d",$random);
    end
  end
  end
  $finish;
    end
endmodule
