asect  0x00

	ldi r0, a
	ld r0, r0
	
	ldi r1, b
	ld r1, r1
	
	ldi r2, 0b00000010
	
	or r1, r0
	or r2, r0
	
	ldi r1, res
	st r1, r0

    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

a:		dc	0b01011001       # replace the empty set by your choice of A for testing
b:		dc	0b10011000       # replace the empty set by your choice of B for testing

res:	ds		1

end
