    // i = 1000 
    @R0
    D=M

    @R1
    D=M

    // @i
    // M=D
(LOOP)
    // if (R0 = 0) goto END
    // @i
    // D=M
    @R0
    D=M

    @R2
    D=M

    @R1
    D=D+M

    @R2
    M=D

    // i = i - 1
    @R0
    M=M-1

    @R0
    D=M

    @END
    D;JEQ

    // goto LOOP
    @LOOP
    0;JMP
(END)
    @END
    0;JMP
