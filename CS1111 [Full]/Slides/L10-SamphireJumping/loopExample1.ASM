;program to continuously add 1 to the contents of the al register

mov al, 00

loop:
  inc al; or equivalently: add al, 1  
  jmp loop
end