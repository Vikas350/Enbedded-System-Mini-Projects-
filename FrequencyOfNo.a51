ORG 0000H
MOV R0, #2
MOV R1, #3
MOV R2, #3
MOV R3, #2
MOV R4, #2
MOV A, #3
MOV R7, #0
MOV B, R0
CJNE A,B, S1
INC R7
S1: MOV B,R1
CJNE A,B, S2
INC R7
S2: MOV B, R2
CJNE A,B, S3
INC R7
S3: MOV B, R3
CJNE A,B, S4
INC R7
S4: MOV B, R4
CJNE A,B, S5
INC R7
S5: NOP
END