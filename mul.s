.section .data
    num1: .long 10
    num2: .long 10
    num3: .long 10
    str: .string "Resultado: %d\n"

.section .text
    .global main

main:
    movl num1, %eax
    movl num2, %ebx
    mul %eax
    imul num3, %eax
    pushl %eax
    pushl $str
    call printf
    add $8, %esp
    ret