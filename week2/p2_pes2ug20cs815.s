.DATA
	A: .WORD 0

.TEXT

	LDR R1, =A 
	
	MOV R3, #1
	MOV R2, #0

L1:
	ADD R2, R2, R3 
	ADD R3, R3, #2
	CMP R3, #13
	BNE L1
	STR R2, [R1] 
        SWI 0x011
.end
