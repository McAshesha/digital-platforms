asect  0x00

	ldi r1, a
	ld r1, r1
	
	ldi r2, b
	ld r2, r2

    push r2
    push r1
    ldsa r0, 0 # load the address of the current stack pointer into r0 for the robot
    halt       # Brings execution to a halt

a: dc 15
b: dc 14

end
