asect  0x00

K	ldi r0, 12

	ldi r1, a
	ld r1, r1
	
	ldi r2, 9
	while
		tst r2
	stays ne
		add r1, r0
		dec r2
	wend
	
	
	ldi r1, b
	ld r1, r1
	
	not r1
	inc r1
	
	ldi r2, 4
	while
		tst r2
	stays ne
		add r1, r0
		dec r2
	wend
	
	
	ldi r1, res
	st r1, r0
	clr r1

    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x30

a:  dc  4       # replace 0 by your choice of integer for testing
b:  dc  2       # replace 0 by your choice of integer for testing
res:	ds	1		# one byte reserved for the result

end

