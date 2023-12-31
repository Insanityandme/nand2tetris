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
    // base
(RESTART) 
    @i
    M=0

    @8192
    M=A
    D=M

    @R2
    M=D
(LOOP) 
    // if (i == R2) goto RESTART
    @i
    D=M
    @R2
    D=D-M
    @RESTART
    D;JEQ

    @KBD
    D=M
    @R1
    M=D
    @PRESSED
    D;JNE

    @SCREEN
    D=A

    // *(R0 + n) = 1
    @R0
    M=D
    @i
    A=D+M
    M=0

    @i
    M=M+1

    @LOOP
    0;JMP
(PRESSED)
    // if (i == R2) goto END
    @i
    D=M
    @R2
    D=D-M
    @RESTART
    D;JEQ

    @KBD
    D=M
    @R1
    M=D
    @LOOP
    D;JEQ

    @SCREEN
    D=A

    // *(R0 + n) = -1
    @R0
    M=D
    @i
    A=D+M
    M=-1

    @i
    M=M+1

    @PRESSED
    0;JMP
(END)
	@END
	0;JMP
