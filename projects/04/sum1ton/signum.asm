// if R0 >= 0 then R1 = 1
// else R1 = -1
    // if R0 >= 0 goto POS
    @R0
    D=M
    @POS
    D;JGE
    // R1 = -1
    @R1
    M=-1
    // goto END
    @END
    0;JMP
(POS)
    // R1 = 1
    @R1
    M=1
(END)
    @END
    0;JMP
