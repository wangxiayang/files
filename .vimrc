set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.

set hlsearch
set smartindent
set number

map <F1> :call system('tmux send-keys -t left "make" C-m') <CR> :call system('tmux send-keys -t left "Show." C-m') <CR>
map <F2> :call system('tmux send-keys -t left "Quit." C-m') <CR> <F1>  
