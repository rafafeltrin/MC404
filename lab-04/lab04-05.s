main:
    addi t0, zero, 4
    ecall

    add s0, zero, a0
    
    addi a1, zero, 10
    
    bge s0, a1, letras

    addi a0, s0, 48
    
    addi t0, zero, 2
    ecall
    ret
letras:
    addi a0, s0, 55
    
    addi t0, zero, 2
    ecall
    ret
 