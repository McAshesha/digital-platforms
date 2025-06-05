asect  0x00

	ldi r0, x
	ld r0, r0
	
	ldi r1, 0b10101010
	and r0, r1
	
	ldi r2, 0b01010101
	and r0, r2
	
	shra r1
	
	if
		cmp r1, r2
	is ne
		ldi r0, 0
	fi
	
	ldi r1, ans
	st r1, r0

    ldi r0, ans  # Loads the address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x20

x:    dc 0b00111100

ans:  ds 1     # one byte reserved for the result
end

