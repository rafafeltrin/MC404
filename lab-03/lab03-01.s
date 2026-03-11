main:
    #initial
    addi t0, zero, 4
    ecall

    #condicional
    addi a1, zero, 1
    and a2, a0, a1
    beq a2, a1, impar 

    #par
    addi a0, zero, 80
    addi t0, zero, 2
    ecall
    
    ret
impar:
    addi a0, zero, 73
    addi t0, zero, 2
    ecall

    ret