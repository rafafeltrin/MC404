.data
vetor: .word 1,2,3,4,5
.text
main:
    la s0, vetor

    #size of the vector (N)
    addi s1, zero, 5
    mv a0, s1
    #vector
    mv a1, s0
    #mult factor
    addi a2, zero, 2

    call MultiplicaVetor

    mv a0, s1
    mv a1, s0
    call ImprimeVetor

    addi a0, zero, 10
    ecall
#void ImprimeVetor(unsigned N, unsigned *v)
MultiplicaVetor:
    #counting
    j for

for:
    beq a0, zero, fim

    lw t0, 0(a1)
    mul t0, t0, a2
    sw t0, 0(a1)

    addi a0, a0, -1

    addi a1, a1, 4

    j for
fim:
    ret

#void ImprimeVetor(unsigned N, unsigned *v)
ImprimeVetor:
    #counting
    mv t0, a0

    #position
    mv t1, a1

for_imprime_vetor:
    beq t0, zero, fim_imprime_vetor
    
    lw t2, 0(t1)
    mv a1, t2
    addi a0, zero, 1
    ecall

    addi t0, t0, -1
    addi t1, t1, 4

    j for_imprime_vetor

fim_imprime_vetor:
    ret