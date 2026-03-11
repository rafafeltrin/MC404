main:
    addi t0, zero, 4
    ecall
    beq a0, zero, fim
    add s0, zero, a0
    addi a0, s0, 2
    addi t0, zero, 1
    ecall
    j main
    ret
fim:
    ret