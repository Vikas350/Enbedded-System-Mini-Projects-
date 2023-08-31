ORG 4000H
DB 3FH, 06H, 5BH, 4FH, 66H, 6DH, 7DH, 07H, 7FH, 6FH


ORG 0000H
MAIN: 	MOV DPTR, #4000H
REPEAT: CLR A
		MOVC A, @A+DPTR  
		MOV P2, A 
		ACALL delay 
		INC DPTR 
		CJNE A, 0, REPEAT 
		SJMP MAIN 
		
		
DELAY:
		MOV R0, #08H
		LP2: MOV R1, #0FFH
		LP1: MOV R2, #0FFH        //1.17s
		LP3: DJNZ R2, LP3
		DJNZ R1, LP1
		DJNZ R0, LP2
		RET
END