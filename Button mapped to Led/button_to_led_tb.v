
`timescale 1ns / 1ps

module button_to_led_tb;
    // Declare test signals
    reg [1:0] KEY;  // Simulated button presses (input)
    wire [9:0] LEDR; // LED outputs

    // Instantiate the DUT (Device Under Test)
    button_to_led uut (
        .KEY(KEY),
        .LEDR(LEDR)
    );

    // Test sequence
    initial begin
        $monitor("Time=%0t | KEY[1:0]=%b | LEDR[3:0]=%b", $time, KEY, LEDR[3:0]);

        KEY = 2'b11; #10;  // Both keys pressed
        KEY = 2'b10; #10;  // KEY[0] released, KEY[1] pressed
        KEY = 2'b01; #10;  // KEY[0] pressed, KEY[1] released
        KEY = 2'b00; #10;  // Both keys released

        $stop;  // End simulation
    end
endmodule
