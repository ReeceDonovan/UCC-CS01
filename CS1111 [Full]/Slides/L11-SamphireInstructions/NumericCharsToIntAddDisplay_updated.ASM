;Reading numeric characters, converting them to integer, adding them and displaying 
;the result in the VDU

in 00     ; get input from the keyboard and place it into the al register
sub al, 30 ; convert to integer
push al
pop bl  ; copy al to bl via the stack

sub al, 30; convert to integer

in 00      ; input a second numeric value
sub al, 30 ; convert to integer
add al, bl ; add to the value in bl
add al, 30 ; convert back to an ascii value
mov [c0], al ; write to th VDU
end


