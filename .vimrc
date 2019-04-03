let mapleader=' '

filetype plugin indent on
syntax on
map 0 ^

set nocompatible
set nobackup
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set hidden
set laststatus=2
set display=lastline
set showmode
set showcmd
set incsearch
set hlsearch
set ttyfast
set lazyredraw
set splitbelow
set splitright
set cursorline
set wrapscan
set report=0
set synmaxcol=200
set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'yggdroot/indentline'
Plug 'altercation/vim-colors-solarized'
Plug 'moll/vim-bbye'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'easymotion/vim-easymotion'
call plug#end()

set background=dark
colorscheme solarized


"********** 键盘映射 **********
" 上下移动当前行
nnoremap <C-k>  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap <C-j>  :<c-u>execute 'move +'. v:count1<cr>

" 在当前行前/后快速插入空行
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" 如果你选中了一行或多行，那么你可以用 < 或 > 来调整他们的缩进。但在调整之后就不会保持选中状态了。
" 你可以连续按下 g v 来重新选中他们，请参考 :h gv。因此，你可以这样来配置映射
xnoremap <  <gv
xnoremap >  >gv

" insert 模式下 光标移动
imap <c-h> <Left>
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-l> <Right>
imap <m-l> <Esc>A
imap <m-h> <Esc>I

" NERDTree 相关
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree  " 自动开启 NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" airline 相关
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#buffer_nr_show = 1 " tabline中buffer显示编号
let g:airline#extensions#tabline#fnamemod = ':t'    " 不显示x/h/d  表示文件所在路径文件夹第一个字母
" alrLine && PowerLine Config
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let Powerline_symbols = 'compatible'

" 注释插件
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1

" buffer 切换
nmap zl :bn<cr>
nmap zh :bp<cr>
nmap <tab> <c-w><c-w>
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
nnoremap ,q :wq<CR>
nnoremap ,z :Bd<CR>

" esc退出高亮模式
nnoremap <esc> :nohl<cr>
nnoremap <esc> :nohls<cr>

noremap Y y$

