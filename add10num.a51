ORG 0000H
SJMP START
ORG 0035H
	START :               //sum=55 (37 in hex)
	MOV A, #1
	MOV B, #2
	MOV R0, #3
	MOV R1, #4
	MOV R2, #5
	MOV R3, #6
	MOV R4, #7
	MOV R5, #8
	MOV R6, #9
	MOV R7, #10

	ADD A,B
	ADD A,R0
	ADD A,R1
	ADD A,R2
	ADD A,R3
	ADD A,R4
	ADD A,R5
	ADD A,R6
	ADD A,R7
	END
		
