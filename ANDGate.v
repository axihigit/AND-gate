 // module and_gate ________________AND Gate________________
 module and_gate
                  (
                  input wire a,
                  input wire b,
                  output wire y
                );

// AND operation represent by (&)

                  assign y = a & b;
                  endmodule

//______________Testbench module____________________
// 1.Declare signals to connects to design

             module tb_and_gate;
                reg a;
                reg b;
                wire y;

// 2.Instantiate the Unit Under Test (UUT)

           and_gate uut(
                        .a(a),
                        .b(b),
                        .y(y)
            );

// 3.Apply test stimuli over time
          initial begin
          $display("Time | A | B | Y");

        //set initail values and wait with time delay (#)
          a = 0; b = 0; #10;
          $display("%0tns | %b | %b | %b", $time, a, b, y);
          a = 1; b = 0; #10;
          $display("%0tns | %b | %b | %b", $time, a, b, y);
          a = 0; b = 1; #10;
          $display("%0tns | %b | %b | %b", $time, a, b, y);
          a = 1; b = 1; #10;
          $display("%0tns | %b | %b | %b", $time, a, b, y);
// 4. End the simulation

       $finish;
    end
endmodule
