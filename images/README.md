# Project Images

This folder contains all the hardware images and documentation photos for the 3-DOF Robotic Arm FPGA project.

## 📸 Image Gallery

### 1. Complete Workspace Setup
![Complete Workspace](WhatsApp%20Image%202026-01-31%20at%2011.56.38%20AM.jpeg)

**Description:** Complete laboratory setup showing the entire development environment

### 2. DE10-Lite FPGA Board
![FPGA Board](fpga_board.jpg)

**Description:** Intel MAX 10 FPGA DE10-Lite development board

### 3. GPIO Pin Assignment Diagram
![GPIO Pinout](WhatsApp%20Image%202026-01-31%20at%2011.55.22%20AM.jpeg)

**Description:** Complete GPIO pin mapping reference for DE10-Lite board


### 4. Final Assembled Robotic Arm
![final ](https://github.com/user-attachments/assets/6e91e60e-8ad5-40b0-b419-3cec6633f586)


##  Connection Overview

### Power Supply Connections
```
Dual Power Supply![final ](https://github.com/user-attachments/assets/0d7853ee-9553-4cb5-9a09-1bba5014750b)

├── Channel 1: 5.1V @ 0.0A (regulated for servos)
│   ├── VCC → All servo motors (red wires)
│   └── GND → Common ground with FPGA
└── Channel 2: Standby

FPGA Board
└── USB Power (5V from laptop)
```

### Signal Connections
```
DE10-Lite FPGA
├── GPIO 0 (Input)
│   ├── SW[0] - Servo 0 increase
│   ├── SW[1] - Servo 0 decrease
│   ├── SW[2] - Servo 1 increase
│   ├── SW[3] - Servo 1 decrease
│   ├── SW[4] - Servo 2 increase
│   ├── SW[5] - Servo 2 decrease
│   ├── SW[6] - Gripper open
│   └── SW[7] - Gripper close
│
└── GPIO 1 (Output - PWM Signals)
    ├── PIN_V10 → Servo 0 signal
    ├── PIN_W10 → Servo 1 signal
    ├── PIN_V9 → Servo 2 signal
    └── PIN_W9 → Servo 3 signal
```




