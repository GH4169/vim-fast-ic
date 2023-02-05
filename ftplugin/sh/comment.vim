" set preparecode in buffernew
func! VimFastSetPreCode()
	call append(line(".")-1,'#!/bin/bash')
	augroup shmode
		au!
		autocmd! BufWritePost *.sh call setfperm(expand('%'),'rwxrwxr--')
		autocmd! BufDelete *.sh au! shmode|aug! shmode
	augroup END
endfunc

nnoremap <silent><buffer><space>xx :w<cr>:vert term <c-r>=expand('%:p')<cr><cr>
nnoremap <silent><buffer><space>xl 0v$"+y:!<c-r>=@+<cr><cr>
xnoremap <silent><buffer><space>xl "+y:call <sid>ExecShell(getreg('+'))<cr>
func! s:ExecShell(str)
	let temp=tempname()
	let content=["#!/bin/sh"]+split(a:str,'\n')
	call writefile(content, temp)
	call setfperm(temp,"rwxrwxrwx")
	exec ":!".temp
endfunc
