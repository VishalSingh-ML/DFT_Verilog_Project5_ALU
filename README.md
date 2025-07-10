# 🧠 DFT_Verilog_Project5_ALU

This project simulates an Arithmetic Logic Unit (ALU) using **Icarus Verilog** and visualizes waveforms via **GTKWave**.

## 📁 Project Structure
DFT_Verilog_Project5_ALU/
├── RTL/
│   └── alu.v
├── Testbench/
│   └── alu_tb.v
├── Waveform/
│   └── GTK.PNG
└── README.md

## ⚙️ ALU Operations Implemented
- ADD
- SUB
- AND
- OR
- XOR
- MUL
- CMP
- NOP

## 📊 Simulation Output

![ALU GTKWave Screenshot](./Waveform/GTK.PNG)

## 💻 Tools Used
- **Icarus Verilog** for compilation & simulation
- **GTKWave** for waveform visualization

## 🔁 Command Used
```bash
iverilog -o alu_test alu.v alu_tb.v
vvp alu_test
gtkwave alu_waveform.vcd


## Author ##
VishalSingh
