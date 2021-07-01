:filetype on                                    " 文件类型识别开启
:filetype indent on                             " 开启缩进
:filetype plugin on                             " 开启插件
:set fencs=utf-8,chinese fenc=utf-8 enc=utf-8   " 编码设置成UTF-8
:syntax on                                      " 代码高亮

augroup basic
  autocmd!
  autocmd BufReadPost * :let &t_ut=''
  autocmd BufReadPost * :set expandtab          " tab转化成空格
  autocmd BufReadPost * :set smarttab           " 智能判断缩进的空格数
  autocmd BufReadPost * :set autoindent         " 自动缩进
  autocmd BufReadPost * :set number             " 开启行号
  autocmd BufReadPost * :set relativenumber     " 开启相对行号
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " 记录上一次文件抒写点
augroup END

set mouse=a                   " 开启鼠标控制
set cursorline                " 光标所处行高亮
" set cursorcolumn              " 光标所处列高亮
set guicursor=i:ver50-iCursor-blinkon1,n-c-v:block-ncvCursor-blinkoff1  " 光标normal模式时静止, insert模式闪烁
set list                      " 显示特殊字符
set nowrap                    " 越界的行不换行
set foldmethod=indent         " 按照缩进的方式进行折叠
set foldlevel=99              " 折叠等级设置为99
set foldenable                " 开启折叠
set hlsearch                  " 高亮查询的结果
set incsearch                 " 在输入搜索字符时就高亮
set ignorecase                " 忽略大小写
set smartcase                 " 如果包含大写就区分大小写
set scrolloff=5               " 滚动激活的边距
set listchars=tab:▸\ ,trail:▫ " 特殊字符展示的效果
set laststatus=2              " 开启状态行

:let mapleader="\<Space>"

" normal 模式
:nnoremap <leader>sx  :source %<cr>
:nnoremap <silent>yp  :let @+ = expand('%:p:h')<cr>

" insert 模式
:inoremap jk          <esc>

" visual 模式
":vnoremap J           9j

" visual 和 normal都执行
:noremap  K           9k
:noremap  J           9j
:noremap  L           12l
:noremap  H           12h
:noremap  S           :w<cr>
:noremap  --          :join<cr>

" operator 模式
:onoremap i(          :<c-u>normal!   f(vi(<cr>
:onoremap i[          :<c-u>normal!   f[vi[<cr>
:onoremap i{          :<c-u>normal!   f{vi{<cr>

" aaaaa(bbb-ccccc)
" aaaaa[bbb-ccccc]
" aaaaa{bbb-ccccc}

nnoremap <silent> <leader>jd   :call <SID>SomeFunc("Hello")<cr>
function! s:SomeFunc(hello)
    echo a:hello
endfunction

:iabbrev @@  hanwenhao@mail.xiyouwangluo.top
:iabbrev fc  function()
:cabbrev tt  Explore

" 缩进实例
augroup filetype_vim
  autocmd!
  autocmd FileType vim  :set tabstop=2
  autocmd FileType vim  :set shiftwidth=2
  autocmd FileType vim  :set softtabstop=2
augroup END

