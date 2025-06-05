asect 	0x00
	
	ldi r0, 1 # предыдущим символом был пробел	
	ldi r1, s
	
	ldi r3, res
	push r3
	
	while
		ld r1, r2
		tst r2
	stays nz
		if
			ldi r3, " "
			cmp r2, r3
		is eq
			ldi r0, 1
		else
			if 
				tst r0
			is nz
				pop r3
				st r3, r1
				inc r3
				push r3
			fi
			ldi r0, 0
		fi
		inc r1
	wend
	
	pop r3
	
	ldi r0, res
	halt

res:	ds	9	# pointers to at most 8 words and the null

s:	dc	"hello  world of tanks",0 # replace ... by some text for testing
	ds      57      # reserve more space in case the string from tester is longer than ours
end
	