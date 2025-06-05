asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r1, y
	ld r1, r1
	
	clr r2
	
	while 
		tst r1
	stays nz
		dec r1
		add r0, r2
	wend
	
	ldi r1, ans
	st r1, r2

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

x:     dc 7    # replace these with your choice
y:     dc 0    # of unsigned numbers for testing

ans:   ds 1    # one byte reserved for the (unsigned number) product

end

