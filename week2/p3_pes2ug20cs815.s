.DATA

	A: .WORD 350
	B: .WORD 350
	C: .WORD 150
	D: .WORD 0
	E: .WORD 0

.TEXT

	LDR R1,=A 
	LDR R2,=B 
	LDR R3,=C 
	LDR R4,=D 
	LDR R5,=E 
	LDR R6, [R1] 
	LDR R7, [R2] 
	LDR R8, [R3] 
	LDR R9, [R4]
	LDR R10, [R5] 
	CMP R6, R7
	BNE L2
	ADD R8, R6 ,R7 
	STR R8, [R3]
	B L4
L2:	CMP R7, R8
	BNE L3
	SUB R9, R6, R7 
	STR R9, [R4]
	B L4
L3:	MUL R10, R6, R7 
	STR R10, [R5]
L4:	SWI 0x011
.END
