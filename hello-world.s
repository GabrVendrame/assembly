.section .data
    str: .asciz "Hello World!\n"

.section .text
    .global main

main:
    pushl $str
    call printf
    addl $4, %esp
    ret