main:
    # Pega um numero x do usuario e retorna x+2
    # Realiza isso 10 vezes
    
    addi s3, zero, 3
    bge s1, s3, fim
    
    addi t0, zero, 4
    ecall
    
    add s0, zero, a0
    addi a0, s0, 2
    addi t0, zero, 1
    ecall
    
    addi s1, s1, 1
    j main
    ret
fim:
    ret