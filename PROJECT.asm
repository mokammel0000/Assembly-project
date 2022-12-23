                            ;simulation for exams system in FCIS
.model small
.data
    grade Db 30H, '$'
    input db 0AH,0DH, "enter the answer..... ", '$'
    output db "your grade is:  ", '$'
    full_mark db "Congratulations,,, you have the Full Mark In Assembly exam  ",0AH,0DH ,'$'
    
    border db "################################################################################",'$'
    reminder1 db "    Dr.Sara... There is no project in the world like our one, We sware that",0AH,0DH,0AH,0DH,'$'
    reminder2 db "                    We just want to make you happy with it."                ,0AH,0DH,0AH,0DH,'$'
    reminder3 db "            At the End, we must Thank you for your efforts with us."        ,0AH,0DH,0AH,0DH,'$'
    n_line DB 0AH,0DH,"$"   ;for new line
    n_lines DB 0AH,0DH,0AH,0DH,0AH,0DH,"$"   ;for new line
    
    QUESTION1 Db "1-  What's course lecturer name...",0AH,0DH, '$'
    CHOISED1_1 Db "a. Dr.Sara Shaker.", 0AH,0DH,'$'
    CHOISED1_2 Db "b. Dr.Sara Al-Metwally.", 0AH,0DH,'$'
    CHOISED1_3 Db "c. Dr.Sara El-Kady.", 0AH,0DH,'$'
    CHOISED1_4 Db "d. doctor's name wasn't Sara at all.",0AH,0DH, '$'
    
    QUESTION2 Db "2-  In the class hall, Dr.Sara gave students....",0AH,0DH, '$'
    CHOISED2_1 Db "a. balls.", 0AH,0DH,'$'
    CHOISED2_2 Db "b. pounds.", 0AH,0DH,'$'
    CHOISED2_3 Db "c. chocolates.", 0AH,0DH,'$'
    CHOISED2_4 Db "d. pens.",0AH,0DH, '$'
    
    QUESTION3 Db "3-  which of the following functions can descripe the number of students who        attend the lecture over the time:",0AH,0DH, '$'
    CHOISED3_1 Db "a. f(x) = x / 2.", 0AH,0DH,'$'
    CHOISED3_2 Db "b. f(x) = x * 2.", 0AH,0DH,'$'
    CHOISED3_3 Db "c. f(x) = x ** 2.", 0AH,0DH,'$'
    CHOISED3_4 Db "d. f(x) = N, where N is constant.",0AH,0DH, '$'
     
    QUESTION4 Db "4-  Assembly is...",0AH,0DH, '$'
    CHOISED4_1 Db "a. harmful food.", 0AH,0DH,'$'
    CHOISED4_2 Db "b. good newspaper.", 0AH,0DH,'$'
    CHOISED4_3 Db "c. a kind of panda.", 0AH,0DH,'$'
    CHOISED4_4 Db "d. low level language.",0AH,0DH, '$'
    
    QUESTION5 Db "5-  our course text box is....",0AH,0DH, '$'
    CHOISED5_1 Db "a. cooking tasty food.", 0AH,0DH,'$'
    CHOISED5_2 Db "b. IBM Pc Assembly language and programming.", 0AH,0DH,'$'
    CHOISED5_3 Db "c. how to be a good instructor.", 0AH,0DH,'$'
    CHOISED5_4 Db "d. travel benifits.",0AH,0DH, '$'
    
    QUESTION6 Db "6-  why assembly in 2022?",0AH,0DH, '$'
    CHOISED6_1 Db "a. It's a famous technology, you can earn alot of money if you learned it.", 0AH,0DH,'$'
    CHOISED6_2 Db "b. you should learn it to appreciate the high level languages, and don't blame     from them again.", 0AH,0DH,'$'
    CHOISED6_3 Db "c. It's important to understand more details about coding.", 0AH,0DH,'$'
    CHOISED6_4 Db "d. I think it has no real value.",0AH,0DH, '$'
    
    QUESTION7 Db "7-  The stack is....",0AH,0DH, '$'
    CHOISED7_1 Db "a. down word approach.", 0AH,0DH,'$'
    CHOISED7_2 Db "b. FiFo approach.", 0AH,0DH,'$'
    CHOISED7_3 Db "c. some kind of meat.", 0AH,0DH,'$'
    CHOISED7_4 Db "d. what's the relation betweem Assembly exam and the stack.",0AH,0DH, '$'
    
    QUESTION8 Db "8-  All processors have the same Assembly instructions",0AH,0DH, '$'
    CHOISED8_1 Db "a. True.", 0AH,0DH,'$'
    CHOISED8_2 Db "b. False.", 0AH,0DH,'$'
    CHOISED8_3 Db "c. Some times yes, but sometimes No.", 0AH,0DH,'$'
    CHOISED8_4 Db "d. What's the relation between Assembly and processors.",0AH,0DH, '$'
    
    QUESTION9 Db "9-  Dr.Sara said that the project is optional but anyone do it -with any idea-      she will accept it.",0AH,0DH, '$'
    CHOISED9_1 Db "a. absloutley true.", 0AH,0DH,'$'
    CHOISED9_2 Db "b. definetly true.", 0AH,0DH,'$'
    CHOISED9_3 Db "c. Of course.", 0AH,0DH,'$'
    CHOISED9_4 Db "d. I can't agree more.",0AH,0DH, '$'
    
    
    QUESTION10 Db "10-  Dr.Sara said that she will give the full mark(40 marks) to anyone who will      make the project.",0AH,0DH, '$'
    CHOISED10_1 Db "a. absloutley true.", 0AH,0DH,'$'
    CHOISED10_2 Db "b. definetly true.", 0AH,0DH,'$'
    CHOISED10_3 Db "c. Of course.", 0AH,0DH,'$'
    CHOISED10_4 Db "d. I can't agree more.",0AH,0DH, '$'
    
    
.code
main proc far
    .startup
    
    CALL Q1
    call clear
    
    CALL Q2
    call clear
    
    CALL Q3
    call clear
    
    CALL Q4
    call clear
    
    CALL Q5
    call clear
    
    CALL Q6
    call clear
    
    CALL Q7
    call clear
    
    CALL Q8
    call clear
    
    CALL Q9
    call clear
    
    CALL Q10
    call clear
    
    cmp grade, 58
    
    JE FullMark 
    JNE all
    
    all:
    lea dx,output
    mov ah,09
    int 21h
    
    lea dx,grade
    mov ah,09
    int 21h
    jbe thanks
    
    
    FullMark:
    lea dx,full_mark
    mov ah,09
    int 21h
    jbe thanks
    
    thanks:
    
    lea dx,n_lines
    mov ah,09
    int 21h
    
    lea dx,border
    mov ah,09
    int 21h
    
    lea dx,reminder1
    mov ah,09
    int 21h
    
    lea dx,reminder2
    mov ah,09
    int 21h
    
    lea dx,reminder3
    mov ah,09
    int 21h
 
    lea dx,border
    mov ah,09
    int 21h
    
.exit      
main endp

Q1 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED1_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED1_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED1_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED1_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'b'
    
    JNE A1 
    inc grade
    A1:
    ret
Q1 ENDP

Q2 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED2_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED2_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED2_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED2_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'c'
    
    JNE A2 
    inc grade
    A2:
    ret
Q2 ENDP
    
Q3 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED3_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED3_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED3_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED3_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'a'
    
    JNE A3 
    inc grade
    A3:
    ret
Q3 ENDP

Q4 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION4
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED4_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED4_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED4_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED4_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'd'
    
    JNE A4 
    inc grade
    A4:
    ret
Q4 ENDP

Q5 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION5
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED5_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED5_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED5_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED5_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'b'
    
    JNE A5
    inc grade
    A5:
    ret
Q5 ENDP


Q6 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION6
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED6_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED6_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED6_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED6_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'c'
    
    JNE A6
    inc grade
    A6:
    ret
Q6 ENDP

Q7 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION7
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED7_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED7_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED7_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED7_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'a'
    
    JNE A7
    inc grade
    A7:
    ret
Q7 ENDP

Q8 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION8
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED8_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED8_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED8_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED8_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
    
    
    cmp al, 'b'
    
    JNE A8
    inc grade
    A8:
    ret
Q8 ENDP

Q9 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION9
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED9_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED9_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED9_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED9_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
     
    inc grade
    ret
Q9 ENDP


Q10 PROC near
    mov ax, @data
    mov ds, ax
    
    LEA DX,QUESTION10
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED10_1
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED10_2
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED10_3
    MOV AH,9
    INT 21H
    
    LEA DX,CHOISED10_4
    MOV AH,9
    INT 21H
    
    LEA DX,INPUT
    MOV AH,9
    INT 21H
    
    LEA DX,n_line
    MOV AH,9
    INT 21H
    
    ;ACCEPT A CHAR AND PUT IT IN AL
    MOV AH, 01H
    INT 21H
     
    inc grade
    ret
Q10 ENDP


    
clear proc near
    ;Clear screen
    mov ax, 3
    int 10H
    ret
clear endp
end main