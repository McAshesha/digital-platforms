asect  0x00

	ldi r0, a
	ld r0, r0
	
	ldi r1, b
	ld r1, r1
	
	and r1, r0
	
	not r0
	
	ldi r1, res
	st r1, r0

    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x10

a:		dc	0b01011001       # replace the empty set by your choice of A for testing
b:		dc	0b10011010       # replace the empty set by your choice of B for testing


res:	ds		1

end
