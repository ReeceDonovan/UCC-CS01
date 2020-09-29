
start:
 mov al, 84 ; 10000100 - red-green
 out 01
 mov al, 48 ; 01001000 - orange-orange
 out 01
 mov al, 30 ; 00110000 - green-red
 out 01
 mov al, 48 ; 01001000 - orange-orange (again)
 out 01
jmp start
end


