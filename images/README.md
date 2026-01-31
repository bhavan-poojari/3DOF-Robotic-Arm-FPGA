# Project Images

This folder contains all the hardware images and documentation photos for the 3-DOF Robotic Arm FPGA project.

## 📸 Image Gallery

### 1. Complete Workspace Setup
![Complete Workspace](WhatsApp%20Image%202026-01-31%20at%2011.56.38%20AM.jpeg)

**Description:** Complete laboratory setup showing the entire development environment

**Contents:**
- Laptop with Intel Quartus Prime IDE displaying Verilog code
- DE10-Lite FPGA development board with active connections
- 3-DOF robotic arm with servo motors assembled on breadboard
- Regulated DC dual power supply (showing 5.1V output)
- Breadboard with servo motor connections
- Various connecting wires and components

**Key Features Visible:**
- Active development environment
- Real-time FPGA programming setup
- Power supply providing stable 5V for servo motors
- Complete hardware integration

---

### 2. DE10-Lite FPGA Board
![FPGA Board](fpga_board.jpg)

**Description:** Intel MAX 10 FPGA DE10-Lite development board

**Board Specifications:**
- **FPGA Chip:** Intel MAX 10 10M50DAF484C7G
- **Logic Elements:** 50,000
- **Memory:** 1,638 Kbits
- **GPIO Headers:** 2× 40-pin expansion headers (GPIO 0 and GPIO 1)
- **Clock:** 50 MHz onboard oscillator
- **Programming:** USB-Blaster for JTAG

**Visible Components:**
- GPIO 0 (JP1) - Left expansion header
- GPIO 1 (JP7) - Right expansion header
- PIN 1 markers for proper pin identification
- MAX 10 FPGA chip (center)
- USB programming port
- Power and status LEDs

---

### 3. GPIO Pin Assignment Diagram
![GPIO Pinout](WhatsApp%20Image%202026-01-31%20at%2011.55.22%20AM.jpeg)

**Description:** Complete GPIO pin mapping reference for DE10-Lite board

**GPIO 0 (JP1) Pinout:**
- Pins 1-40 with full pin names (PIN_V12, PIN_W12, etc.)
- Power pins: 5V (pins 11, 29), 3.3V (pin 29), GND (pins 12, 30)
- Used for slide switch inputs (SW[0] to SW[7])
- Additional GPIO connections available

**GPIO 1 (JP7) Pinout:**
- Pins 1-40 with complete pin assignments
- Power pins: 5V (pins 11, 29), 3.3V (pin 29), GND (pins 12, 30)  
- Used for servo motor PWM outputs (servo0-servo3)
- Additional expansion capabilities

**Pin Connections Used in Project:**
- **SW[0]-SW[7]:** GPIO 0 pins for slide switch inputs
- **servo0:** GPIO 1 PIN_V10 - Base rotation
- **servo1:** GPIO 1 PIN_W10 - Shoulder joint
- **servo2:** GPIO 1 PIN_V9 - Elbow joint
- **servo3:** GPIO 1 PIN_W9 - Gripper control
- **CLOCK_50:** PIN_P11 - System clock
- **KEY0:** PIN_B8 - Reset button

**I/O Standard:** 3.3-V LVTTL for all pins

---

### 4. Final Assembled Robotic Arm
![Final Hardware](final.jpeg)

**Description:** Fully assembled 3-DOF robotic arm with gripper mechanism

**Hardware Components:**
- **Base Servo (Servo 0):** Controls base rotation (0° to 90°)
- **Shoulder Servo (Servo 1):** Controls shoulder joint movement
- **Elbow Servo (Servo 2):** Controls elbow joint positioning
- **Gripper Servo (Servo 3):** Controls gripper open/close mechanism

**Mechanical Structure:**
- Acrylic or plastic arm segments
- Servo motor mounting brackets
- Linkage system for joint movement
- End-effector gripper with parallel jaws
- Stable base platform

**Electrical Connections:**
- PWM signal wires (orange/yellow) from FPGA to servos
- Power wires (red) - 5V supply to all servos
- Ground wires (brown/black) - Common ground
- Organized wire routing for clean assembly

---

## 🔌 Connection Overview

### Power Supply Connections
```
Dual Power Supply
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

---

## 📋 Image Details

| Image File | Type | Description | Size |
|------------|------|-------------|------|
| WhatsApp Image 2026-01-31 at 11.56.38 AM.jpeg | Photo | Complete workspace setup | ~2MB |
| fpga_board.jpg | Diagram | DE10-Lite FPGA board | ~500KB |
| WhatsApp Image 2026-01-31 at 11.55.22 AM.jpeg | Diagram | GPIO pinout reference | ~1.5MB |
| final.jpeg | Photo | Assembled robotic arm | ~1MB |

---

## 🎯 Hardware Specifications Summary

### FPGA Board
- **Model:** DE10-Lite MAX 10
- **Part Number:** 10M50DAF484C7G
- **Clock Frequency:** 50 MHz
- **I/O Voltage:** 3.3V LVTTL
- **Programming:** USB-Blaster JTAG

### Servo Motors
- **Type:** SG90 or MG995 (depending on joint)
- **Operating Voltage:** 4.8V - 6V (5V nominal)
- **PWM Period:** 20ms (50 Hz)
- **Pulse Width Range:** 1.0ms to 2.0ms
- **Angular Range:** 0° to 90° (project configuration)
- **Control:** PWM signal from FPGA GPIO

### Power Supply
- **Type:** Regulated DC dual power supply
- **Voltage:** 5.1V (regulated)
- **Current Capacity:** Up to 3A per channel
- **Usage:** Powers all servo motors
- **Safety:** Over-current protection

---

## 📖 How to Use These Images

### In Documentation
```markdown
![Description](images/filename.jpg)
```

### In Reports
- Reference images by their section number
- Include captions explaining the visible components
- Cite the GPIO pinout diagram for pin assignments

### For Presentations
- Use workspace image to show complete setup
- Reference pinout diagram during technical explanations
- Show final hardware to demonstrate project outcome

---

## 🔍 Image Quality Notes

- All images are high-resolution for clear viewing
- Pinout diagram shows complete pin assignments for both GPIO headers
- Workspace photo captures the active development environment
- Final hardware photo shows the complete assembled system
- All images suitable for technical documentation and presentations

---

## 📞 Additional Information

For more details about the project implementation, refer to:
- [Main README.md](../README.md) - Complete project documentation
- [roboarm.v](../roboarm.v) - Verilog source code
- [roboarm.qsf](../roboarm.qsf) - Pin assignment file

---

*Images captured during project development and testing - January 2026*
