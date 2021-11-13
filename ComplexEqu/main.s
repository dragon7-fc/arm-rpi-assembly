@(A + 8B +7C - 27) / 4
@A = 25, B = 19, C = 99


                .global main
main:
                MOV     R0,#25
                MOV     R1,#19
                MOV     R2,#99
                ADD     R0,R0,R1,LSL #3  @ Add 8B to A and put the result on r0
                MOV     R1,#99
                MOV     R2,#7
                MLA     R0,R1,R2,R0     @ Add 7C to r0 and put he result in r0
                SUB     R0,R0,#27
                MOV     R0,R0,ASR #2    @ divide the total by 4

                MOV     R7,#1
                SVC     0
                .end
