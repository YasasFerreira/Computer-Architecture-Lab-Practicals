;jump function (n=5 Hai or Bye)
.model small
.stack 100h
.data
   msg   db "Enter a number : $"
   msg1  db "Hi",10,"$"
   msg2  db "Bye",10,"$"
.code
start:
   mov ax,@data
   mov ds,ax
   
   mov dx,offset msg
   mov ah,09h
   int 21h
   
   mov ah,01h
   int 21h
   
   sub al,48
   cmp al,5
   
   mov dl,10
   mov ah,02h
   int 21h
   
   je  Lb1yes
   jne Lb1no
   
  
   
   Lb1yes:
     mov dx,offset msg1
	 mov ah,09h
	 int 21h
	 jmp Endnn
	 
   Lb1no:
     mov dx,offset msg2
	 mov ah,09h
	 int 21h
	 
   Endnn:
     mov ax,4c00h
	 int 21h
end start
	 