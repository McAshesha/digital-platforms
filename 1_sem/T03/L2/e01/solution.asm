asect	0x00
	
	ldi r0, n
	ld r0, r0
	
	ldi r1, s
	clr r3
	
	while
		ld r1, r2
		tst r2
	stays nz
		if
			cmp r0, r3
		is eq
			ldi r0, res
			st r0, r2
			halt
		fi
		inc r3
		inc r1
	wend
	
	ldi r1, "?"
	ldi r0, res
	st r0, r1
	
	ldi   r0, res
	halt

n:	dc	4 		# replace 0 by your choice of n for testing
s:	dc	".6fd",0 	# replace ... by some text for testing
	ds	18 	# reserve more space in case the string from tester is longer than ours

res:	ds	1
end
