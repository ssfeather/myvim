"去掉vi的一致性"
set nocompatible
"显示行号"
set number
" 隐藏滚动条"    
 set guioptions-=r 
 set guioptions-=L
 set guioptions-=b
"隐藏顶部标签栏"
 set showtabline=0
"设置字体"
set guifont=Monaco:h13
"开启语法高亮"
syntax on   
"solarized主题设置在终端下的设置"
let g:solarized_termcolors=256
"设置背景色"
set background=dark      
" colorscheme solarized
"设置不折行"
set nowrap   		 
"设置以unix的格式保存文件"
set fileformat=unix 
"设置C样式的缩进格式"
set cindent       	
"设置table长度"
set tabstop=4   	 
set shiftwidth=4    
"显示匹配的括号"
set showmatch  		
"距离顶部和底部5行"
set scrolloff=5     
"命令行为两行"
set laststatus=2   	
"文件编码"
set fenc=utf-8     	 
set backspace=2
"启用鼠标"
set mouse=a       	 
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
"忽略大小写"
set ignorecase       	
set incsearch
"高亮搜索项"
set hlsearch       	
"不允许扩展table"
set noexpandtab      	 
set whichwrap+=,h,l
set autoread
"突出显示当前行"
set cursorline       	 
"突出显示当前列"
set cursorcolumn       	 

"按F5运行python"
map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
  let mp = &makeprg
  let ef = &errorformat
  let exeFile = expand("%:t")
  setlocal makeprg=python\ -u
  set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
  silent make %
  copen
  let &makeprg = mp
  let &errorformat = ef
endfunction

" Pathogen load
call pathogen#infect()
call pathogen#helptags()
" Override go-to.definition key shortcut to Ctrl-]
let g:pymode_rope_goto_definition_bind = "<C-]>"
" Override run current python file key shortcut to Ctrl-Shift-e
let g:pymode_run_bind = "<C-S-e>"
" Override view python doc key shortcut to Ctrl-Shift-d
let g:pymode_doc_bind = "<C-S-d>"
let g:pymode_python = 'python3'
let g:pymode_options_max_line_length = 86 

"F2开启和关闭树"
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
""显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
""窗口大小"
let NERDTreeWinSize=25

map <F3> :TagbarToggle<CR>

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
" 
" "autopep8设置"
" let g:autopep8_disable_show_diff=1

 let mapleader=','

" 是否启用顶部tabline
let g:airline#extensions#tabline#enabled = 1
" 顶部tabline显示方式
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'"

let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'], ['Darkblue', 'SeaGreen3'], ['darkgray', 'DarkOrchid3'], ['darkgreen', 'firebrick3'],['darkcyan', 'RoyalBlue3'],['darkred', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['brown', 'firebrick3'],['gray', 'RoyalBlue3'],['black',       'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['Darkblue',  'firebrick3'],['darkgreen', 'RoyalBlue3'],['darkcyan', 'SeaGreen3'],['darkred', 'DarkOrchid3'],['red', 'firebrick3'] ]
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'dyng/ctrlsf.vim'
call vundle#end()
filetype plugin indent on

