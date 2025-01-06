4-Bit Sequential Multiplier
Overview
This project implements a 4-bit Sequential Multiplier, designed to multiply two 4-bit binary numbers using sequential logic. The design leverages a step-by-step approach, where partial products are calculated and accumulated iteratively, reducing hardware complexity compared to combinational multipliers.

Features
4-Bit Multiplication: Computes the product of two 4-bit binary inputs.
Sequential Operation: Reduces hardware usage by processing one step at a time.
Compact Design: Optimized for low-resource environments like FPGAs with limited logic elements.
Reset and Enable: Supports reset functionality and an enable signal for controlled operation.
Inputs and Outputs
Inputs:
A[3:0]: 4-bit binary multiplicand.
B[3:0]: 4-bit binary multiplier.
Clock (clk): Synchronizes the sequential operations.
Reset (rst): Resets the multiplier to its initial state.
Enable (en): Enables the multiplier operation.
Outputs:
Product[7:0]: 8-bit binary result of the multiplication.
Done: Signal indicating the completion of the multiplication process.
Design Approach
Partial Product Calculation:

The multiplier iteratively computes partial products by ANDing bits of the multiplicand with the multiplier bits.
Each partial product is shifted and accumulated in successive clock cycles.
Sequential Control:

A finite state machine (FSM) or counter manages the step-by-step process of generating and summing partial products.
Completion Signal:

A "Done" signal indicates when the operation is complete, allowing for easy integration into larger systems.
