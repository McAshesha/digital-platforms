asect  0x00

	ldi r0, a
	ld r0, r0
	move r0, r1
	move r0, r2
	ldi r3, 0b11110000
	and r3, r1
	ldi r3, 0b00001111
	and r3, r2
	shr r1
	shr r1
	shr r1
	shr r1
	
	ldi r0, 10
	if 
		cmp r1, r0
	is lt
		ldi r0, 0x30
		add r0, r1
	else 
		ldi r0, 10
		sub r1, r0
		move r0, r1
		ldi r0, 0x41
		add r0, r1
	fi
	
	ldi r0, 10
	if 
		cmp r2, r0
	is lt
		ldi r0, 0x30
		add r0, r2
	else 
		ldi r0, 10
		sub r2, r0
		move r0, r2
		ldi r0, 0x41
		add r0, r2
	fi
	
	ldi r0, res
	st r0, r1
	inc r0
	st r0, r2

    ldi r0, res  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

a:    dc  0b01101011   # The output for this bit-string should be "E7"

res:  ds 2             # Two bytes reserved for the result
end
