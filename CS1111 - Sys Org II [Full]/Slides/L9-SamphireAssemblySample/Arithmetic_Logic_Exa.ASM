;Exploring the aritmetic and logic operators

; calculate 10*4+3 - all hex numbers

mov al, 10
mul al, 04
add al, 03

; logic operator example:

mov cl, 20
mov dl, 40
or cl, dl ; note that the logic operators are performed at the bit level
not cl
end
