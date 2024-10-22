asect  0x00

	ldi r0, aHi
	ld r0, r0
	
	ldi r1, bHi
	ld r1, r1
	
	not r1
	inc r1
	
	add r1, r0
	add r1, r0
	
	
	ldi r1, aLo
	ld r1, r1
	
	ldi r2, bLo
	ld r2, r2
	
	not r2
	inc r2
	
	add r2, r1
	add r2, r1
	
	if 
		tst r1
	is mi
		ldi r2, 0b11111111
		add r2, r1
		
		ldi r2, -1
		add r2, r0
	fi
	
	ldi r2, resLo
	st r2, r0
	
	ldi r2, resHi
	st r2, r1

    ldi r0, resLo  # Loads the start address of your result into r0 for the robot
    halt           # Brings execution to a halt

asect 0x30

aLo:	dc	10 	# replace 0 by your choice of low byte for testing
aHi:	dc	18 	# replace 0 by your choice of high byte for testing
bLo:	dc	4 	# replace 0 by your choice of low byte for testing
bHi:	dc	3 	# replace 0 by your choice of high byte for testing

resLo:	ds	1
resHi:  ds  1		# two bytes reserved for the result
end


