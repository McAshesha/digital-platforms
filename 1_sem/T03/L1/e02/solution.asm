asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r1, y
	ld r1, r1
	
	clr r2
	move r0, r3
	
	while
		cmp r3, r1
	stays hs
		neg r1
		add r1, r3
		neg r1
		inc r2
	wend
	
	ldi r0, quot
	st r0, r2
	
	ldi r1, remain
	st r1, r3

    ldi r0, quot  # Loads the address of your result into r0 for the robot
    halt          # Brings execution to a halt


x:      dc 22   # replace these with your choice
y:      dc 6    # of unsigned numbers for testing

quot:   ds 1    # one byte reserved for the quotient
remain: ds 1    # one byte reserved for the remainder
end

