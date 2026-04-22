.data
vetor1: .word 1,2,3,4,5
vetor2: .word 1,2,3,4,5
vetor3: .space 20
.text
main:
    la s0, vetor1
    la s1, vetor2
    la s2, vetor3

    addi s3, zero, 5
 
    mv a0, s3
    mv a1, s0
    mv a2, s1
    mv a3, s2
    call somaVetores

    addi a0, zero, 10
    ecall
#void SomaVetores(unsigned N, unsigned *v1, unsigned *v2, unsigned *resultado)
somaVetores:
    addi sp, sp, -28
    sw ra, 0(sp)
    sw s0, 4(sp)
    sw s1, 8(sp)
    sw s2, 12(sp)
    sw s3, 16(sp)
    sw s4, 20(sp)
    sw s5, 24(sp)

    mv s0, a0
    mv s1, a1
    mv s2, a2
    mv s3, a3

    mv s4, a0
    mv s5, a3
for_soma_vetor:
    beq s0, zero, fim_soma_vetor

    lw t0, 0(s1)
    lw t1, 0(s2)
    add t2, t0, t1
    sw t2, 0(s3)

    addi s0, s0, -1
    addi s1, s1, 4
    addi s2, s2, 4
    addi s3, s3, 4

    j for_soma_vetor

fim_soma_vetor:
    mv a0, s4
    mv a1, s5
    call ImprimeVetor
    
    lw s5, 24(sp)
    lw s4, 20(sp)
    lw s3, 16(sp)
    lw s2, 12(sp)
    lw s1, 8(sp)
    lw s0, 4(sp)
    lw ra, 0(sp)
    
    addi sp, sp, 24
    ret 
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