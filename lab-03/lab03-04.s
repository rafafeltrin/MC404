main:
    #recebendo o secredo
    addi t0, zero, 4
    ecall
    add s0, zero, a0

    #recebendo o número a codificar
    addi t0, zero, 4
    ecall
    add s1, zero, a0

    #codificando
    xor a0, s0, s1

    #imprimindo
    addi t0, zero, 1
    ecall

    ret

