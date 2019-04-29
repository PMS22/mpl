.model small
.data
str1 db 'madam','$'
strlen1 dw $ -str1
strrev db 20 dup(' ')
str_palin db 'String is Palindrom','$'
str_not_palin db 'string is not P','$'
.code
mov ax,@data
mov ds,ax
mov es,ax
mov cx,strlen1
add cx,-2
lea si,str1
lea di,strrev
add si,strlen1
add si,-2
L1:mov al,[si]
mov [di],al
dec si
inc di
loop L1
mov al,[si]
mov [di],al
inc di
mov dl,'$'
mov[di],dl
mov cx,strlen1
lea si,str1
lea di,strrev
repe cmpsb
jne not_palin
mov ah,09h
lea dx,str_palin
int 21h
jmp exit
not_palin:mov ah,09h
lea dx,str_not_palin
int 21h
exit: mov ah,4ch
int 21h
end
