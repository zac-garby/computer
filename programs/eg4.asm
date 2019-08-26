	LDA	50	Push two numbers, 1 and 2, to the stack.
	PUSH
	LDA	51
	PUSH
	LDA	52	Clear the accumulator to ensure pop actually works.
	POP	0	Then, pop the two numbers in order and output them.
	OUT	0	They should be displayed in reverse order, so 2 then 1.
	POP
	OUT
	HALT
	
50	DATA	1
51	DATA	2
52	DATA	0