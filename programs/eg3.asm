	LDA	19
	OUT
	ADDR	20
	STA	19
	SUBR	21
	JZ	14
	JMP	0
14	LDA	19
	OUT
	HALT
	
20	DATA	1	The increment
21	DATA	10	The value to count to