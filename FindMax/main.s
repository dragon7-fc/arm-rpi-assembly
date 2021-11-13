
COUNT       .req    R0
MAX         .req    R1
POINTER     .req    R2
NEXT        .req    R3


MYDATA:            .word   69,67,86,45,75

                    .global     main
main:
            MOV     COUNT,#5
            MOV     MAX,#0
            LDR     POINTER,=MYDATA

AGAIN:      LDR     NEXT,[POINTER]
            CMP     MAX,NEXT
            BHS     CTNU
            MOV     MAX,NEXT

CTNU:       ADD     POINTER,POINTER,#4
            SUBS    COUNT,COUNT,#1
            BNE     AGAIN

            MOV     R7,#1
            SVC     0
            .end
