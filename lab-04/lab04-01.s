main:
    addi t0, zero, 4
    ecall
    addi a0, a0, 1
    blt a0, zero, negativo
    addi t0, zero, 1
    ecall
    ret

negativo:
    add s0, zero, a0
    addi a0, zero, 45
    addi t0, zero, 2
    ecall
    sub s0, zero, s0
    add a0, zero, s0
    addi t0, zero, 1
    ecall