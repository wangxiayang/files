syntax on
filetype plugin indent on
set hlsearch
set number
set tags=tags;

"map <F1> :call system('tmux send-keys -t left "make" C-m') <CR>
"map <F2> :call system('tmux send-keys -t left "Show." C-m') <CR>
"map <F3> :call system('tmux send-keys -t left "Quit." C-m') <CR>
"map <F4> :call system('tmux send-keys -t left "Quit." C-m "make" C-m "Focus 1." C-m') <CR>

highlight S1 ctermfg=white ctermbg=red
highlight S2 ctermfg=white ctermbg=green
highlight S3 ctermfg=white ctermbg=blue

map <F1> :execute 'match S1 /\<'. expand('<cword>') .'\>/'<CR>
map <F2> :execute '2match S2 /\<'. expand('<cword>') .'\>/'<CR>

highlight CursorLine ctermfg=black ctermbg=grey
highlight CursorColumn ctermfg=black ctermbg=grey

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
