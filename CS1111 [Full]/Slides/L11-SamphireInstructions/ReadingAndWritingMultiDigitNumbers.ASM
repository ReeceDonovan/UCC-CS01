;Reading and writing multi digit numbers

in 00     ; get input from the keyboard and place it into the al register
sub al, 30 ; convert to integer
mul al, 0a ; 0a is the hex value for decimal 10 
push al
pop bl  ; copy al to bl via the stack

in 00      ; input a second numeric value
sub al, 30 ; convert to integer
add al, bl ; add to the value in bl. bl now has the multidigit number
	  
; write the number to the VDU

push al
pop bl   ;put a copy of the number in bl

div al, 0a ; get the number of 10s in the integer
add al, 30 ;  convert to character
mov[c0], al ; write to VDU

mod bl, 0a ; get hte number of units in the integer
add bl, 30 ; convert to character
mov [c1], bl ; write to VDU

end



