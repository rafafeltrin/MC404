main:
    addi t0, zero, 4
    ecall

    beq a0, zero, fim

    #verificar se e par ou impar
    addi a1, zero, 1
    and a2, a1, a0

    #Se armazenar 1 e impar
    beq a2, a1, impar

    #par
    add s1, s1, a0

    j main
impar:
    add s0, s0, a0
    j main
fim:
    sub a0, s0, s1
    addi t0, zero, 1
    ecall
    ret