option casemap:none
extern MessageBoxA : proc
extern ExitProcess : proc

.data
    msg     db "Hello, World!", 0
    title   db "Message", 0

.code
main proc
    sub rsp, 28h
    xor rcx, rcx
    lea rdx, msg
    lea r8, title
    xor r9d, r9d
    call MessageBoxA
    xor ecx, ecx
    call ExitProcess
main endp
end
