" 变量
:let g:hello = "world" "全局变量
:let b:hello = "world" "当前缓冲区(当前文件)
function! SomeFunc(hello)
    " 局部变量
    echo a:hello
endfunction

" 条件语句
:if 10 > 1
:    echom "foo"
:endif

" 循环语句
:let c = 0

:for i in [1, 2, 3, 4]
:  let c += i
:endfor

:echom c

" 函数
nnoremap <silent> <leader>jd   :call <SID>SomeFunc("Hello")<cr>
function! s:SomeFunc(hello)
    echo a:hello
endfunction

