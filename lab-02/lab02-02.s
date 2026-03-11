main:
    addi t0, zero, 4
    ecall
    add s0, zero, a0
    addi a0, s0, 2
    addi t0, zero, 1
    ecall
    bne s0, zero, main
    ret