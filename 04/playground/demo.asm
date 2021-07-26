// Adds up two numbers
// RAM[2] = RAM[0] + RAM[1]
// Usage: put the values that you wish to adds
//        in RAM[0] and RAM[1], and the sum will
//        be stored in RAM[2]

@0
D=M

@1
D=D+M

@2
M=D

// Best Practice: Terminate a program safely
//                by adding an infinite loop
@6
0;JMP2