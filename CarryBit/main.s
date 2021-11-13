            .global main


main:
            LDR     R0,=0XF62562FA
            LDR     R1,=0xF412963B

            MOV     R2,#0x35
            MOV     R3,#0x21

            ADDS    R5,R2,R3
            ADC     R6, R0,R1  @ R6  = R0+R1 +C

            MOV     R7,#1
            SVC     0

           .end
