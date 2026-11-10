 // module and_gate ________________AND Gate______Testbench+Dumpers(forwaveform output)_________________
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

  //setup waveform file for GTkWave
    //dumpfile is bascially storing the record the recorded data
      $dumpfile("and_waveform.vcd");
    //dumpvars is to what to record(0) and where to record(tb_and_gate) testbench stuff
    $dumpvars(0,tb_and_gate);

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
