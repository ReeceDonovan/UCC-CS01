;Reading numeric characters, converting them to integer, adding them and displaying 
;the result in the VDU

in 00     ; get input from the keyboard and place it into the al register
sub al, 30 ; convert to integer
mov [80], al   ; copy the al register value to the bl register via the memory
mov bl, [80]   ; location 80. Note this is not good practice because, in general,  we 
	       ; cannot be sure if the location 80 is not being used,

sub al, 30; convert to integer

in 00      ; input a second numeric value
sub al, 30 ; convert to integer
add al, bl ; add to the value in bl
add al, 30 ; convert back to an ascii value
mov [c0], al ; write to th VDU
end