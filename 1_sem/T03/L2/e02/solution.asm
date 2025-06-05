asect 	0x00
	
	ldi r1, s
	
	while
		ld r1, r2
		tst r2
	stays nz
		if
			ldi r0, "a"
			cmp r2, r0
		is ge
			if
				ldi r0, "z"
				cmp r2, r0
			is le
				ldi r0, -32
				add r0, r2
				st r1, r2
			fi
		fi
		inc r1
	wend
	
	ldi r0, res
	halt

res:
s:	dc	"sbDG.f?!!!.fdsd",0 	# replace ... by some text for testing
	ds      17      # reserve more space in case the string from tester is longer than ours
end
	