syntax on
filetype plugin indent on
set hlsearch
set number

" size of \t
set tabstop=4
" ??
" set softtabstop=?
" automatic indention for the next level code
" default is 8
" print the value using 'set shiftwidth?'
set shiftwidth=4
" \t or ' ' ---- hard tab or soft tab
" set expandtab
"set smartindent
" autoindent: copy the indent of current line
"set autoindent
"------ smartindent and cindent will conflict with filetype indent
" a customizable template
"set cindent
"set smartindent

set encoding=utf-8
set fileencoding=utf-8

let $PAGER=''

augroup filetype
  au! BufRead,BufNewFile *.ll	set filetype=llvm
augroup END

augroup filetype
  au! BufRead,BufNewFile *.td	set filetype=tablegen
augroup END
