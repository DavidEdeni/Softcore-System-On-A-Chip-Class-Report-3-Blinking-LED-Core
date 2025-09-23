`timescale 1ns / 1ps

module stateMachine(
    input logic [15:0] ms,
    input logic clk,
    input logic start,
    input logic stop,
    output logic LED,
    output logic [15:0] num,
    output logic hi,
    output logic timerEn,
    output logic timerRst
    );
    
parameter INIT = 3'B000;
parameter RAND_WAIT = 3'B001;
parameter JUMPED_GUN = 3'B010;
parameter PRESS_WAIT = 3'B011;
parameter DSP_TIME = 3'B100;
parameter DSP_ONE = 3'B101;
parameter DSP_NINES = 3'B110;

logic [2:0]state;

always @(posedge(clk))
    case(state)
        INIT      :
            // display
            // count up
        RAND_WAIT :
            //
        JUMPED_GUN:
        PRESS_WAIT:
        DSP_TIME  :
        DSP_ONE   :
        DSP_NINES :
    endcase
end



    
endmodule
