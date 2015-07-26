" Coq plugin
" Language: Coq
" Author: Wang Xiayang (wangxiayang.fdt@gmail.com)
" Last Modified: July 26, 2015
"
" Usage: Place it in $HOME/.vim/ftplugin/

func s:Send_before(l)
	if a:l < 0
		return
	else
		let curline = 0
		while curline <= a:l
			let content = getline(curline)
			let cmd = "tmux send-keys -t left '" . content . "' C-m"
			call system(cmd)
			let curline += 1
		endwhile
	endif
endfunc

func s:Send_cur(l)
	if a:l < 0
		return
	else
		let content = getline(a:l)
		let cmd = "tmux send-keys -t left '" . content . "' C-m"
		call system(cmd)
	endif
endfunc

func s:Reset()
	call system("tmux send-keys -t left 'Quit.' C-m")
	call system("tmux send-keys -t left 'coqtop' C-m")
endfunc

func Coqtop_before_cursor()
	call s:Reset()
	let curline = getpos(".")[1]
	call s:Send_before(curline)
endfunc

func Coqtop_sendone()
	let pos = getpos(".")
	call s:Send_cur(pos[1])
	let pos[1] += 1
	let pos[2] = 0
	call setpos(".", pos)
endfunc

map <F1> :call system('tmux send-keys -t left "make" C-m') <CR>
map <F2> :call system('tmux send-keys -t left "Show." C-m') <CR>
map <F3> :call system('tmux send-keys -t left "Quit." C-m') <CR>
map <F4> :call system('tmux send-keys -t left "Quit." C-m "make" C-m "Focus 1." C-m') <CR>
map <F5> :call Coqtop_before_cursor() <CR>
map <F6> :call Coqtop_sendone() <CR>
