// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// I will keep adding R0 into R2 for 'R1 times'
  @R0
  D=M
  @END
  D;JEQ // JUMP TO END if R0 is 0

(MULTIPLICATION_LOOP)
  @R1
  D=M
  @END
  D;JEQ // JUMP TO END if R1 is 0
  
  @R0
  D=M
  @R2
  M=M+D
  @R1
  D=M-1
  M=D
  @MULTIPLICATION_LOOP
  D;JGT
  @END
  0;JMP

(END)
  @END 
  0;JMP // END of program infinite loop