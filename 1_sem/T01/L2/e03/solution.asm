asect  0x00

	ldi r0, a
	ld r0, r0
	
	ldi r1, b
	ld r1, r1
	
	add r1, r0
	clr r1
	addc r1, r1
	
	ldi r2, resLo
	st r2, r0
	
	ldi r2, resHi
	st r2, r1

    ldi r0, resLo  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

asect 0x20

a:	dc	255 	# replace 0 by your choice of low byte for testing
b:	dc	2 	# replace 0 by your choice of high byte for testing

resLo:  ds  1
resHi:  ds  1		# two bytes reserved for the result
end


