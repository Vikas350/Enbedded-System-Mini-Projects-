ORG 0000H
//Taking 10 nos. in 10 registers

		MOV A, #23
		MOV B, #2
		MOV R0, #53
		MOV R1, #48
		MOV R2, #26
		MOV R3, #97
		MOV R4, #35
		MOV R5, #81
		MOV R6, #90
		MOV R7, #57


//Comparing the 10 nos and taking max in a register
		CJNE A,B,  S1
		S1:JC NEXT1
		MOV B,A
		NEXT1: MOV A, R0

		CJNE A,B,  S2
		S2:JC NEXT2
		MOV B,A
		NEXT2: MOV A, R1

		CJNE A,B,  S3
		S3:JC NEXT3
		MOV B,A
		NEXT3: MOV A, R2
		
		CJNE A,B,  S4
		S4:JC NEXT4
		MOV B,A
		NEXT4: MOV A, R3
		
		CJNE A,B,  S5
		S5:JC NEXT5
		MOV B,A
		NEXT5: MOV A, R4
		
		CJNE A,B,  S6
		S6:JC NEXT6
		MOV B,A
		NEXT6: MOV A, R5
		
		CJNE A,B,  S7
		S7:JC NEXT7
		MOV B,A
		NEXT7: MOV A, R6
		
		CJNE A,B,  S8
		S8:JC NEXT8
		MOV B,A
		NEXT8: MOV A, R7
		
		CJNE A,B,  S9
		S9:JC NEXT9
		MOV B,A
		NEXT9: NOP
END