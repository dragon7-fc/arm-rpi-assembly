
                .global     main
main:
                LDR     R0,=2010    @ can't use mov, because 2010 > 8 bit
                MOV     R1,#10
                MOV     R2,#0

L:              CMP     R0,R1
                BLO     stop
                SUBS    R0,R0,R1
                ADD     R2,R2,#1
                B       L

@                MOV     R7.#1
@ stop:          SVC     0

stop:            B      stop
