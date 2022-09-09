"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" chenxuan's vim config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","      " 定义<leader>键
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=1          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set ttimeoutlen=0        " 设置<ESC>键响应时间
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面
set noshowmode			 " 设置不打开底部insert
set hidden               " 设置允许在未保存切换buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set noexpandtab			 " 设置禁止空格替换tab,tab党
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等
set sidescroll=10        " 设置向右滚动字符数
set nofoldenable         " 禁用折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感
" set smartcase			" 搜索智能匹配大小写

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gvim/macvim设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
    let system = system('uname -s')
    if system == "Darwin\n"
        set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h14 " 设置字体
    else
        set guifont=DroidSansMono\ Nerd\ Font\ Regular\ 14      " 设置字体
    endif
    set guioptions-=m           " 隐藏菜单栏
    set guioptions-=T           " 隐藏工具栏
    set guioptions-=L           " 隐藏左侧滚动条
    set guioptions-=r           " 隐藏右侧滚动条
    set guioptions-=b           " 隐藏底部滚动条
    set showtabline=0           " 隐藏Tab栏
    set guicursor=n-v-c:ver5    " 设置光标为竖线
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 卸载默认插件UnPlug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:deregister(repo)
  let repo = substitute(a:repo, '[\/]\+$', '', '')
  let name = fnamemodify(repo, ':t:s?\.git$??')
  call remove(g:plugs, name)
endfunction
command! -nargs=1 -bar UnPlug call s:deregister(<args>)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug list 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" begin vim 
Plug 'chenxuan520/my-vim-dashboard'
Plug 'chxuan/prepare-code'
" function list
Plug 'preservim/tagbar', {'tag':'2.2'}
" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release','tag': '0.0.80'}
" find anything
Plug 'Yggdroot/LeaderF'
" quick move mouse
Plug 'easymotion/vim-easymotion'
" enhance the /
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/vim-slash'
" pair auto
Plug 'jiangmiao/auto-pairs'
" file tree left
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" easy align
Plug 'godlygeek/tabular'
" change surround quick
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
" quick add comment
Plug 'tpope/vim-commentary'
" add endif when enter if
Plug 'tpope/vim-endwise'
" for cpp highlight
Plug 'octol/vim-cpp-enhanced-highlight', {'for':'cpp'}
" for go highlight
Plug 'chenxuan520/vim-go-highlight', {'for':'go'}
" for python highlight
Plug 'vim-python/python-syntax', {'for':'py'}
" line of bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" file devicon
Plug 'ryanoasis/vim-devicons'
" Git control
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" text obj
Plug 'kana/vim-textobj-user'
" funtion info inline
Plug 'Shougo/echodoc.vim'
" enhance c-f/b and c-d/u
Plug 'terryma/vim-smooth-scroll'
" enhance f/t
Plug 'rhysd/clever-f.vim'
" code snippets
Plug 'honza/vim-snippets'
" project maneage
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

call plug#end()  


" load vim default plugin
runtime macros/matchit.vim

" key map and inside config setting

" reload .vimrc
nnoremap <leader><leader>s :source $MYVIMRC<cr>

" install and clean plug
nnoremap <leader><leader>i :PlugInstall<cr>
nnoremap <leader><leader>c :PlugClean<cr>

" vim-buffer
nnoremap <silent> <c-p> :bp<cr>
nnoremap <silent> <c-n> :bn<cr>
nnoremap <silent> <leader>d :bd<cr>

" insert model to move cursor
imap <c-j> <DOWN>
imap <c-k> <UP>
imap <c-l> <RIGHT>

" yank to system
vmap <leader><leader>y "+y
" paste to system
nnoremap <leader><leader>p "+p

" load the file last edit
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

" termdebug
let g:termdebug_wide=1
nnoremap <leader><leader>d :packadd termdebug<CR>:Termdebug<space>
nnoremap <F5> :packadd termdebug<CR>:Termdebug<space>
nnoremap <F6> :Break<cr>
nnoremap <F7> :Over<cr>
nnoremap <F8> :Step<cr>

" term console
tnoremap <c-\> <c-\><c-n>
nnoremap <Leader><Leader>T :term<CR>
nnoremap <Leader><Leader>t :vert term<CR>

" fast add comment for cpp
func SetComment()
	call append(line("."),'/***********************************************')
	call append(line(".")+1,'* Author: chenxuan-1607772321@qq.com')
	call append(line(".")+2,'* change time:'.strftime("%Y-%m-%d %H:%M:%S"))
	call append(line(".")+3,'* description:')
	call append(line(".")+4,'* example: ')
	call append(line(".")+5,'***********************************************/')
endfunc
nnoremap <Leader>c :call SetComment()<CR>

" yank and paste
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p
nnoremap <Leader>P "0P
vnoremap <Leader>P "0P

" vimdiff merge
command! -nargs=0 Remote :diffg RE
command! -nargs=0 Base :diffg BA
command! -nargs=0 Local :diffg LO

" change window width
nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w><
nnoremap <c-right> <c-w>>

" set themes
set background=dark

" plug config setting

" tokyonight themes
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" onedark themes
" let g:onedark_termcolors=256
" colorscheme onedark

" airline
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['tabline']
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" prepare-code
let g:prepare_code_plugin_path = expand($HOME . "/.vim/plugged/prepare-code")

" nerdtree
nnoremap <silent> <leader>n :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
let g:NERDTreeWinSize=22
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" coc.nvim
" coc tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" coc find define
nmap <leader>u <Plug>(coc-definition)
nmap <leader>U <Plug>(coc-type-definition)
nmap <silent>gu <Plug>(coc-definition)
nmap <silent>gt <Plug>(coc-type-definition)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>gi <Plug>(coc-implementation)
nmap <leader>ff <Plug>(coc-fix-current)
" coc refactor code
nmap <space>r <Plug>(coc-refactor)
nmap <leader>r <Plug>(coc-rename)
" coc find wrong
nmap <silent><F3> <Plug>(coc-diagnostic-prev)
nmap <silent><F4> <Plug>(coc-diagnostic-next)
nmap <silent><leader><leader>W <Plug>(coc-diagnostic-prev)
nmap <silent><leader><leader>w <Plug>(coc-diagnostic-next)
nnoremap <silent><nowait> <space>w :<C-u>CocList diagnostics<cr>
" coc text obj
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" coc code action
nmap <leader>a  <Plug>(coc-codeaction)
nmap <leader>l  <Plug>(coc-codelens-action)
xmap <silent><leader>s  <Plug>(coc-codeaction-selected)
" coc format
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=0 Import :call CocActionAsync('runCommand', 'editor.action.organizeImport')
nmap <leader><leader>f :Format<cr>
" coc config
nmap <silent><nowait> <space><space>c :CocConfig<cr>
nmap <silent><nowait> <space>l :CocList extensions<cr>
" coc help
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" tagbar
let g:tagbar_width = 24
nnoremap <silent> <leader>t :TagbarToggle<cr>

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader>w <Plug>(easymotion-bd-w)
nmap <leader>w <Plug>(easymotion-overwin-w)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)

" python-highlight
let g:python_highlight_all = 1

" vim-go-highlight
let g:go_highlight_functions = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_build_constraints =1
let g:go_highlight_generate_tags =1
let g:go_highlight_string_spellcheck = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_array_whitespace_error = 1
" let g:go_highlight_variable_declarations = 1
" let g:go_highlight_variable_assignments = 1

" dashboard
nnoremap <space>S :SessionSave<cr>
nnoremap <space>s :SessionLoad<cr>

" leaderF
nnoremap <leader>F :LeaderfFile .<cr>
nnoremap <leader>b :LeaderfBuffer<cr>
nnoremap <space>f :LeaderfFile .<cr>
nnoremap <space>b :LeaderfBuffer<cr>
nnoremap <space>t :LeaderfFunction<cr>
nnoremap <space>a :Leaderf rg -i<cr>
nnoremap <space>: :LeaderfCommand<cr>
nnoremap <space>/ :LeaderfLine<cr>
nnoremap <F1> :LeaderfColorscheme<cr>
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_UseCache = 0

" echodoc.vim
let g:echodoc_enable_at_startup = 1

" tabular
nnoremap <leader>T :Tab /
vnoremap <leader>T :Tab /

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" gv
nnoremap <leader>g :GV<cr>
nnoremap <leader>G :GV!<cr>
nnoremap <leader>gg :GV?<cr>

" asyncrun
let g:asyncrun_open = 6
nmap <silent><nowait> <space>c :AsyncTaskEdit<cr>
let g:asyncrun_bell = 0
" asyncrun ack
nnoremap <leader>A :AsyncRun ack -i<space>
nnoremap <leader>H :execute ":AsyncRun ack -i " . expand("<cword>")<cr>
