main:
    #recebendo o numero
    addi t0, zero, 4
    ecall

    #limite do for
    addi s0, zero, 32
    #i
    addi s1, zero, zero

    #numero
    add s2, zero, a0 
    #valor 1 para comparacao
    addi s3, zero, 1
    j for

for:
    and a0, s2, s3

    addi t0, zero, 1
    ecall

    srl s2, s2, s3


    #itero sobre i
    addi s1, s1, 1
    
    blt s1, s0, for
    ret