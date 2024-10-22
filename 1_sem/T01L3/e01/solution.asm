asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r3, 8
	
	while
		tst r3
	stays ne
		dec r3
		shla r0
		addc r2, r1
	wend
	
	ldi r0, 1
	and r0, r1
	
	ldi r0, res
	st r0, r1

    ldi r0, res  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

asect 0x20

x:     dc  0b10111010    # replace 0 by your choice of bit-string for testing

res:  ds  1    # one byte reserved for the result
end

