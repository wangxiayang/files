set hlsearch
set smartindent "auto insert tab
set tabstop=2
set expandtab "split a \t into spaces

au BufEnter,BufRead *.conf setf dosini

set updatetime=100
au! CursorMoved * set nohlsearch
au! CursorHold * set hlsearch | let @/='\<'.expand("<cword>").'\>'
set hlsearch

