asect  0x00

	ldi r1, aLo
	ld r1, r1
	
	ldi r3, bLo
	ld r3, r3
	
	add r3, r1
	
	ldi r0, aHi
	ld r0, r0
	
	ldi r2, bHi
	ld r2, r2
	
	addc r2, r0
	
	ldi r2, resLo
	st r2, r1
	
	ldi r3, resHi
	st r3, r0

    ldi r0, resLo  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

asect 0x20

aLo:	dc	101 	# replace 0 by your choice of low byte for testing
aHi:	dc	245 	# replace 0 by your choice of high byte for testing
bLo:	dc	1 	# replace 0 by your choice of low byte for testing
bHi:	dc	0 	# replace 0 by your choice of high byte for testing

resLo:	ds	1
resHi:  ds  1		# two bytes reserved for the result
end


