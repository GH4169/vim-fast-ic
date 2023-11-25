" fast add comment for cpp
func s:SetComment()
	call append(line("."),'/***********************************************')
	call append(line(".")+1,'* Author: chenxuan-1607772321@qq.com')
	call append(line(".")+2,'* change time:'.strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+3,'* description:')
	call append(line(".")+4,'* example: ')
	call append(line(".")+5,'***********************************************/')
endfunc
" set preparecode in buffernew
func! VimFastSetPreCode()
	call precode#CreateCode()
endfunc
nnoremap <buffer><Leader>c :call <SID>SetComment()<CR>

func! s:Run()
	let g:nvim_term_open=1
	if filereadable(expand('%:p:h')."/Makefile")||filereadable(expand('%:p:h')."/makefile")
		if has('nvim')
			exec ":vsplit|term make"
		else
			exec ":vert term make"
		endif
	elseif filereadable(expand('%:p:h')."/CMakeLists.txt")
		if has('nvim')
			exec ":vsplit|term cmake ."
		else
			exec ":vert term cmake ."
		endif
	else
		echo "using g++,please wait..."
		call system("g++ ".expand('%:p'))
		if has('nvim')
			exec ":vsplit|term ./a.out"
		else
			exec ":vert term ./a.out"
		endif
	endif
endfunc
nnoremap <buffer><space>xx :call <sid>Run()<cr>

" 设置cpp缩进
setlocal expandtab     " set forbidden space to replace tab
setlocal tabstop=2     " number of spaces used by tabs when editing
setlocal shiftwidth=2  " number of spaces tab occupies when formatting
setlocal softtabstop=2 " set 4 spaces as tabs
