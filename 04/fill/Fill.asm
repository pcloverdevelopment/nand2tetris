// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(CHECK_KEY_LOOP)
  @KBD
  D=M
  @FILL_LOOP
  D;JGT
  @CLEAR_LOOP
  0;JMP

(FILL_LOOP)
  @0
  D=A
  @R1
  M=D // Save the value of 0 into R1
(FILL_INNER_LOOP)
  @SCREEN
  D=A
  @R1
  D=D+M // SCREEN Base address plus R1
  A=D
  M=-1
  @R1
  D=M+1
  M=D
  @8192
  D=A-D
  @CHECK_KEY_LOOP
  D;JEQ
  @FILL_INNER_LOOP
  0;JMP

(CLEAR_LOOP)
  @0
  D=A
  @R1
  M=D // Save the value of 0 into R1
(CLEAR_INNER_LOOP)
  @SCREEN
  D=A
  @R1
  D=D+M // SCREEN Base address plus R1
  A=D 
  M=0
  @R1
  D=M+1 
  M=D
  @8192
  D=A-D
  @CHECK_KEY_LOOP
  D;JEQ
  @CLEAR_INNER_LOOP
  0;JMP
