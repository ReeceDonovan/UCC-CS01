;Exploring the aritmetic and logic operators

; increment and decrement

mov al, 10
inc al
inc al
dec al
dec al

;inc and dec give us a way of executing common expressions (for example, i = i+1 and i = i-1)
;They take up less room in memory than add al, 01, for example.
;They typically have harware support which involves incrementing/decrementing the value in a 
;register without having to go through the ALU.
;They are an example of Amdahl's law in action. 

end
