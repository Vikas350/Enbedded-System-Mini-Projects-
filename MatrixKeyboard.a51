ORG 0000H
MOV P2, #0F0H    // setting higher nibble as P2 is input port   (P2 is column)
MOV P1, #00H     //making P1 o/p port
MOV P1, #00H     //initially clearing P1    (P1 is row)

SETB P3.2
SETB P3.3
SETB P3.4
S00: SETB P2.0
	 MOV A, P2
	 CJNE A, #0E1H, S01
	 MOV P1, #0E1H
	 
S01: CJNE A, #0D1H, S02
	 MOV P1, #0D1H
S02: CJNE A, #0B1H, S03
	 MOV P1, #0B1H
S03: CJNE A, #071H, S10
	 MOV P1, #071H
	 
S10: CLR P2.0
	 SETB P2.1
	 MOV A, P2
	 CJNE A, #0E2H, S11
	 MOV P1, #0E2H
S11: CJNE A, #0D2H, S12
	 MOV P1, #0D2H
S12: CJNE A, #0B2H, S13
	 MOV P1, #0B2H
S13: CJNE A, #072H, S20
	 MOV P1, #072H
	 
	 
S20: CLR P2.1
	 SETB P2.2
	 MOV A, P2
	 CJNE A, #0E4H, S21
	 MOV P1, #0E4H
S21: CJNE A, #0D4H, S22
 	 MOV P1, #0D4H
S22: CJNE A, #0B4H, S23
	 MOV P1, #0B4H
S23: CJNE A, #074H, S30
	 MOV P1, #074H
	 
	 
S30: CLR P2.2
	 SETB P2.3
	 MOV A, P2
	 CJNE A, #0E8H, S31
	 MOV P1, #0E8H
S31: CJNE A, #0D8H, S32
	 MOV P1, #0D8H
S32: CJNE A, #0B8H, S33
	 MOV P1, #0B8H
S33: CJNE A, #078H, DONE
	 MOV P1, #078H
	 
DONE: CLR P2.3
	 SJMP S00
	 END