asect  0x00
	
	ldi r1, 16
	ldi r2, a
	st r2, r1
	
	ldi r1, 0x32
	ldi r2, b
	st r2, r1
	
	ldi r1, 0b00000011
	ldi r2, c
	st r2, r1
	
    ldi r0, a    # Loads the start address of your result into r0 for the robot
    halt         # Brings execution to a halt

asect 0x20

a: ds 1	# This memory cell is where your program's output will end up
b: ds 1	# This memory cell is where your program's output will end up
c: ds 1	# This memory cell is where your program's output will end up

end
