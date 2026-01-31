module roboarm (
    input  wire        CLOCK_50,
    input  wire        KEY0,
    input  wire [7:0]  SW,
    output reg         servo0,
    output reg         servo1,
    output reg         servo2,
    output reg         servo3
);
 
    wire rst = ~KEY0;
 
    // 50 Hz frame
    localparam FRAME_MAX = 20'd1_000_000;
 
    // 0–90° range
    localparam PULSE_MIN = 17'd50_000;  // 1.0 ms
    localparam PULSE_MAX = 17'd75_000;  // 1.5 ms
    localparam CENTER    = 17'd62_500;
 
    // Speed control
    localparam SPEED_DIV = 22'd3_000_000;
    reg [21:0] speed_cnt;
 
    reg [19:0] frame_cnt;
    reg [16:0] pulse [0:3];
 
    integer i;
 
    // Frame counter
    always @(posedge CLOCK_50) begin
        if (rst)
            frame_cnt <= 0;
        else if (frame_cnt == FRAME_MAX)
            frame_cnt <= 0;
        else
            frame_cnt <= frame_cnt + 1;
    end
 
    // Speed divider
    always @(posedge CLOCK_50) begin
        if (rst)
            speed_cnt <= 0;
        else if (speed_cnt == SPEED_DIV)
            speed_cnt <= 0;
        else
            speed_cnt <= speed_cnt + 1;
    end
 
    wire slow_en = (speed_cnt == SPEED_DIV);
 
    // Control logic
    always @(posedge CLOCK_50) begin
        if (rst) begin
            for (i=0;i<4;i=i+1)
                pulse[i] <= CENTER;
        end else if (slow_en) begin
 
            // Servo 0
            if (SW[0] && pulse[0] < PULSE_MAX) pulse[0] <= pulse[0] + 17'd200;
            if (SW[1] && pulse[0] > PULSE_MIN) pulse[0] <= pulse[0] - 17'd200;
 
            // Servo 1
            if (SW[2] && pulse[1] < PULSE_MAX) pulse[1] <= pulse[1] + 17'd200;
            if (SW[3] && pulse[1] > PULSE_MIN) pulse[1] <= pulse[1] - 17'd200;
 
            // Servo 2
            if (SW[4] && pulse[2] < PULSE_MAX) pulse[2] <= pulse[2] + 17'd200;
            if (SW[5] && pulse[2] > PULSE_MIN) pulse[2] <= pulse[2] - 17'd200;
 
            // Servo 3 — LOCKED unless switch pressed
            if (SW[6] && pulse[3] < PULSE_MAX) pulse[3] <= pulse[3] + 17'd200;
            else if (SW[7] && pulse[3] > PULSE_MIN) pulse[3] <= pulse[3] - 17'd200;
            else pulse[3] <= CENTER;   // stop runaway
        end
    end
 
    // PWM outputs
    always @(posedge CLOCK_50) begin
        servo0 <= (frame_cnt < pulse[0]);
        servo1 <= (frame_cnt < pulse[1]);
        servo2 <= (frame_cnt < pulse[2]);
        servo3 <= (frame_cnt < pulse[3]);
    end
 
endmodule
