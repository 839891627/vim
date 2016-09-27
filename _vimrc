" 判断操作系统类型
if(has('win32') || has('win64'))
    let g:isWIN = 1
   let g:isMAC = 0
else
    if system('uname') =~ 'Darwin'
        let g:isWIN = 0
        let g:isMAC = 1
    else
        let g:isWIN = 0
        let g:isMAC = 0
    endif
endif


" 判断是否处于GUI界面
if has('gui_running')
    let g:isGUI = 1
else
    let g:isGUI = 0
endif


" 设置着色模式和字体
if g:isWIN
    " colorscheme molokai
    " colorscheme monokai
    colorscheme solarized
    " set background=dark
    set guifont=YaHei_Consolas_Hybrid:h11
else
    colorscheme molokai
    set guifont=Monaco\ 11
endif

" 设置文件编码和文件格
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac,dos
if g:isWIN
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif
set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦???
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全
au FocusLost * silent! wa    " 丢失鼠标自动保存文件

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%

" set autowrite
set conceallevel=0
set smarttab
set autowriteall
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set relativenumber           " 开启相对行???
set nu!                      " 显示行号
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功???
set hlsearch                 " 开启高亮显示结???
set nowrapscan               " 搜索到文件两端时不重新搜???
set nocompatible             " 关闭兼容模式
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set fdm=syntax
set foldenable               " 启用折叠
set foldmethod=indent        " indent 折叠方式
set foldlevel=100            " 禁止自动折叠
" 用空格键来开关折叠
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
set laststatus=2             " 开启状态栏信息
set cmdheight=1              " 命令行的高度，默认为1，这里设???
set autoread                 " 当文件在外部被修改时自动更新该文???
set noswapfile               " 不生成交换文???
set nobackup                 " 不生成备份文???
" set list                     " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代???
" set listchars=tab:\~\ ,trail:.
set expandtab                " 将Tab自动转化成空???[需要输入真正的Tab键时，使???Ctrl+V + Tab]
set showmatch               " 显示括号配对情况
" 设置通用缩进策略
set shiftwidth=4
set tabstop=4
set smarttab
set softtabstop=4
set tw=80

filetype off                  " required

set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#rc('$VIM/vimfiles/bundle/')
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'https://github.com/mattn/emmet-vim.git'
Plugin 'https://github.com/Shougo/neocomplete.vim.git'
Plugin 'https://github.com/mbbill/undotree.git'
Plugin 'https://github.com/easymotion/vim-easymotion.git'
Plugin 'https://github.com/FriendsOfPHP/PHP-CS-Fixer.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/vim-scripts/vim-cursorword.git'
Plugin 'https://github.com/bling/vim-airline.git'
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plugin 'https://github.com/godlygeek/tabular.git'
Plugin 'https://github.com/moll/vim-bbye.git'
Plugin 'https://github.com/vim-scripts/DoxygenToolkit.vim.git'
Plugin 'https://github.com/jlanzarotta/bufexplorer.git'
Plugin 'https://github.com/luochen1990/rainbow.git'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/Yggdroot/indentLine.git'
Plugin 'https://github.com/maksimr/vim-jsbeautify.git'
Plugin 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'https://github.com/rking/ag.vim.git'
Plugin 'https://github.com/dyng/ctrlsf.vim.git'
Plugin 'https://github.com/msanders/snipmate.vim.git'
Plugin 'https://github.com/honza/vim-snippets.git'
Plugin 'https://github.com/junegunn/goyo.vim.git'
Plugin 'https://github.com/plasticboy/vim-markdown.git'
Plugin 'https://github.com/iamcco/markdown-preview.vim.git'
Plugin 'https://github.com/jiangmiao/auto-pairs.git'
Plugin 'alvan/vim-php-manual'
Plugin 'https://github.com/tpope/vim-repeat.git'
Plugin 'https://github.com/vim-scripts/AuthorInfo.git'  " 需要修改fplugin为plugin
Plugin 'https://github.com/othree/javascript-libraries-syntax.vim.git'
Plugin 'https://github.com/vim-airline/vim-airline-themes.git'
Plugin 'https://github.com/leshill/vim-json.git'
Plugin 'jwalton512/vim-blade'
" Plugin 'https://github.com/Valloric/MatchTagAlways.git'
Plugin 'https://github.com/gregsexton/MatchTag.git'
Plugin 'https://github.com/tpope/vim-fugitive.git'
Plugin 'https://github.com/pangloss/vim-javascript.git'
Plugin 'https://github.com/FooSoft/vim-argwrap.git'
Plugin 'https://github.com/Shutnik/jshint2.vim.git'
Plugin 'https://github.com/digitaltoad/vim-jade.git'
Plugin 'https://github.com/briancollins/vim-jst.git'
Plugin 'https://github.com/skywind3000/asyncrun.vim.git'
Plugin 'https://github.com/chemzqm/wxapp.vim.git'
" Plugin 'https://github.com/airblade/vim-gitgutter.git'
" Plugin 'https://github.com/ervandew/supertab.git'
" Plugin 'https://github.com/nono/jquery.vim.git'
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'trailing-whitespace'
" Plugin 'https://github.com/Shougo/unite.vim.git'
" Plugin 'https://github.com/scrooloose/syntastic.git'
Plugin 'https://github.com/gcmt/wildfire.vim.git'
" Plugin 'https://github.com/jlanzarotta/colorSchemeExplorer.git'

call vundle#end()           " required
filetype plugin indent on   " required

"bufexplorer
nnoremap <silent> <space> :ToggleBufExplorer<CR>

let g:AutoPairsMapCh=0  " 取消auto-pairs的<c-h>删除前一个字符的映射

"jsBeautify
autocmd FileType javascript noremap <buffer>  <Leader>js :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <Leader>js :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <Leader>js :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <Leader>js :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <Leader>js :call CSSBeautify()<cr>

" show next jshint error
nnoremap <leader>n :lnext<CR>
inoremap <leader>n <C-O>:lnext<CR>
vnoremap <leader>n :lnext<CR>

" show previous jshint error
nnoremap <leader>p :lprevious<CR>
inoremap <leader>p <C-O>:lprevious<CR>
vnoremap <leader>p :lprevious<CR>

" js美化&错误排查
map <Leader>jj :call JsHintJsBeautify()<cr>
func! JsHintJsBeautify()
    :cal JsBeautify()
    :JSHint
endfunc

"jshint2
let jshint2_command = $VIMRUNTIME."/jshint.cmd"

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 0
" markdown-preview
let g:mkdp_path_to_chrome = "C:/Users/aisha/AppData/Local/CentBrowser/Application/chrome.exe"
let g:mkdp_auto_start = 0   " 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开markdown文件的时候打开一次
let g:mkdp_auto_open = 0    " 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预览窗口
let g:mkdp_auto_close = 0   " 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不自动关闭预览窗口
let g:mkdp_refresh_slow = 0 " 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时更新预览
nmap ,m :call MarkdownOpen()<cr>
nmap <leader>m :call MarkdownOpen()<cr>
func! MarkdownOpen()
    if g:mkdp_server_started
        " 如果服务已经开启则先关闭服务
        :MarkdownPreviewStop
        :MarkdownPreview
    else
        :MarkdownPreview
    endif
endfunc

"phpmanual 在线查看的  原来是<c-h> 和左移窗口冲突
let g:php_manual_online_search_shortcut = '<C-1>'

"ctags
" nmap <F3> <Esc>:silent !ctags -R *<CR>
nmap <F3> <Esc>:AsyncRun ctags -R *<CR>
set tags=./tags;                            "向上级目录递归查找tags文件（好像只有在Windows下才有用）

" nerdcommenter
let NERDSpaceDelims = 1                        " 自动添加前置空格

"bbye 关闭当前tab
nnoremap ,q :wq<CR>
nnoremap ,z :Bd<CR>

" Remap VIM 0 to first non-blank character
map 0 ^

" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>
imap <F1> <Esc>

" \bn                 自定义对齐    [Tabular插件]
"
nmap <leader>bn :Tabularize /

" \fe                 打开文件编码窗口，在右侧栏显示 [FencView插件]
nmap <leader>fe :FencView<cr>

" \ff                 打开文件搜索窗口，在最下方显示 [CtrlP插件]
nmap <leader>ff :CtrlPMixed<cr>

"syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
" let g:syntastic_aggregate_errors = 1
" " 过滤错误类型等
" " let g:syntastic_quiet_messages = {
" " \ "!level":  "errors,warnings",
" " \ "type":    "style",
" " \ "regex":   '\m\[C03\d\d\]',
" " \ "file:p":  ['\m^/usr/include/', '\m\c\.h$'] }
" let g:syntastic_quiet_messages = {
            " \ "!level":  "errors,warnings",
            " \ "regex":   '\m\[C03\d\d\]',
            " \ "file:p":  ['\m^/usr/include/', '\m\c\.h$'] }
" " let g:syntastic_mode_map      = {
" " \'mode': 'active',
" " \'passive_filetypes': ['php','groovy', 'kotlin', 'ceylon', 'scala', 'clojure', 'lisp', 'eruby', 'slim', 'jade', 'scss', 'less', 'css', 'html', 'xhtml']
" " \}                                 " 指定不需要开启检查的语言

" BufExplorer         文件缓冲浏览器
let g:bufExplorerSortBy = 'name'               " 按文件名排序
nmap zl :bn<cr>
nmap zh :bp<cr>
nmap <tab> <c-w><c-w>

"goyo
let g:goyo_width=150
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0
let g:goyo_margin_left = 30
set guitablabel=%{tabpagenr()}.%t\ %m
let g:goyo_linenr=1
:nmap ,g :Goyo<cr>

" 方法名添加注释（光标在方法名所在行）
nmap <F7> :Dox<cr>

" 折叠数组
nnoremap <silent> ,a :ArgWrap<CR>

"snipMate
"用snippets的补全（这个比较全）
let g:snippets_dir = $VIM.'/vimfiles/snippets/'
let g:snipMate                                  = {}
let g:snipMate.scope_aliases                    = {}

" 设置Gvim的对齐线样式
let g:indentLine_char = "┊"
let g:indentLine_first_char = "┊"
let g:indentLine_color_term = 239 " 设置终端对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
let g:indentLine_color_gui = '#A4E57E' " 设置 GUI 对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
" let g:indentLine_conceallevel = 1 "(default 2)

"rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :rainbowtoggle
let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimfuncbody', 'start=/\[/ end=/\]/ containedin=vimfuncbody', 'start=/{/ end=/}/ fold containedin=vimfuncbody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-za-z0-9]+)(\s+[-_:a-za-z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}

" NERDTree
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD tree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1                     "始终显示标签
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeAutoDeleteBuffer=1
let NERDTreeWinSize = 35
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
map <F2> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#002B36')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#002B36')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#002B36')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#002B36')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#002B36')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#002B36')
call NERDTreeHighlightFile('json', 'green', 'none', 'green', '#002B36')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#002B36')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#002B36')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#002B36')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#002B36')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#002B36')
call NERDTreeHighlightFile('php', 'lightblue', 'none', 'lightblue', '#002B36')

"AuthorInfo
let g:vimrc_author='arvin'
let g:vimrc_email='arvin.cao@sunallies.com'
let g:vimrc_homepage='https://github.com/839891627'
nmap <F6> :AuthorInfoDetect<cr>

" TagBar              tags标签浏览
let g:tagbar_width=30
let g:tagbar_sort = 0                          " 关闭排序     [也就是按标签本身在文件中的位置排序]
let g:tagbar_show_linenumbers = -1             " 显示行号     [使用全局关于行号的默认配置]
let g:tagbar_autopreview = 0                   " 开启自动预???[随着光标在标签上的移动，顶部会出现一个实时的预览窗口]
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.'}
nmap <F4> :TagbarToggle<cr><c-w><c-l>

"Easymotion
map  // <Plug>(easymotion-sn)
omap // <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map ,l <Plug>(easymotion-lineforward)
map ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)
map ,h <Plug>(easymotion-linebackward)
" map t <Plug>(easymotion-bd-tl)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"undotree
nnoremap <F12> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" 在MiniBufExplorer 中移动
noremap <c-k> <c-w>k
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l

"使vimrc更易用
nmap ,w :wa!<CR>
nmap ,vv :source $VIM/_vimrc<CR>
nmap ,v :e $VIM/_vimrc<CR>

" javascript-libraries-syntax                    指定需要高亮的JS库
let g:used_javascript_libs = 'jquery,requirejs,underscore,backbone,angularjs,angularui,angularuirouter,react,flux,handlebars'

" php-cs-fixer                                   格式化PHP代码
" let g:php_cs_fixer_level = 'symfony'           " 使用Symfony推荐的代码风格
let g:php_cs_fixer_config = 'default'          " 使用默认配置
let g:php_cs_fixer_php_path = 'php'            " 指定PHP可执行文件的路径
let g:php_cs_fixer_enable_default_mapping = 1  " 使用插件默认的快捷键
let g:php_cs_fixer_dry_run = 0                 " 只提示需要格式化的位置，不执行格式化 [0为不开启]
nmap <F9> :call PhpCsFixerFixFile()<CR>
nmap <F10> :call PhpCsFixerFixDirectory()<CR>

" AirLine             彩色状态栏
" let g:airline_theme = 'wombat'                " 设置主题
let g:airline_theme = 'solarized'                " 设置主题
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#buffer_nr_show = 1 " tabline中buffer显示编号
let g:airline#extensions#tabline#fnamemod = ':t'    " 不显示x/h/d  表示文件所在路径文件夹第一个字母
" alrLine && PowerLine Config
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let Powerline_symbols = 'compatible'
" let g:airline_section_b = '%{strftime("%c")}'
" let g:airline_section_y = 'BN:%{bufnr("%")}'

" php  html在浏览器中打开
" -----------------------------------------------------------------------------
nmap ,f :call ViewInBrowser("ff")<CR>
nmap ,c :call ViewInBrowser("cr")<cr>
nmap ,i :call ViewInBrowser("ie")<cr>

func! ViewInBrowser(name)
    if expand("%:e") == "php" || expand("%:e") == "htm" || expand("%:e") == "html" || expand("%:e") == 'shtml'
        exe ":update"
        let file = iconv(substitute(expand("%:p"), '\', '/', "g"), "utf-8", "gbk")

        let SystemIE = " C:/Program\ Files\ (x86)/Internet\ Explorer/iexplore.exe      "
        let Chrome =   "C:/Users/aisha/AppData/Local/CentBrowser/Application/chrome.exe"
        let Firefox =  "C:/Program\ Files\ (x86)/Mozilla\ Firefox/firefox.exe"

        let htdocs ="D:/PHP/nginx-1.8.1/html/"
        let url = "localhost"

        let l:browsers = {}
        let l:browsers["cr"] = Chrome
        let l:browsers["ff"] = Firefox
        let l:browsers["ie"] = SystemIE

        if stridx(file, htdocs) == -1
            exec ":silent !start ". l:browsers[a:name] ." file://" . file
        else
            let file = substitute(file, htdocs, "http://".url."/", "g")
            exec ":silent !start ". l:browsers[a:name] file
        endif
    else
        echohl WarningMsg | echo " please choose the correct source file"
    endif
endfunc

"打开文件所在目录
function! OpenFileLocation()
    if ( expand("%") != "" )
        execute "!start explorer /select, %"
    else
        execute "!start explorer /select, %:p:h"
    endif
endfunction
map gb <ESC>:call OpenFileLocation()<CR>

function! OpenGit()
    execute "!start C:/Program\ Files/Git/git-bash.exe"
endfunction
map gi <ESC>:call OpenGit()<CR>
" ======= 自定义快捷键 ======= "
" esc退出高亮模式
nnoremap <esc> :nohl<cr>
nnoremap <esc> :nohls<cr>
" Ctrl + ]            多选择跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>

" 字典补全
imap <c-u> <c-x><c-k>

" Ctrl  + H            光标左移一格
imap <c-h> <Left>

" Ctrl  + J            光标下移一格
imap <c-j> <Down>

" Ctrl  + K            光标上移一格
imap <c-k> <Up>

" Ctrl  + L            光标右移一格
imap <c-l> <Right>

" Alt + L
imap <m-l> <Esc>A

" Alt + H
imap <m-h> <Esc>I

" \rb                 一键去除所有尾部空白
imap <leader>rb <esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
nmap <leader>rb :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>
vmap <leader>rb <esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<cr>

" \rm                 一键去除字符
imap <leader>rm <ESC>:%s/\r$//g<CR>:noh<CR>
nmap <leader>rm :%s/\r$//g<CR>:noh<CR>
vmap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>

" \rt                 一键替换全部Tab为空格
func! RemoveTabs()
    if &shiftwidth == 2
        exec '%s/    /  /g'
    elseif &shiftwidth == 4
        exec '%s/    /    /g'
    elseif &shiftwidth == 6
        exec '%s/    /      /g'
    elseif &shiftwidth == 8
        exec '%s/    /        /g'
    else
        exec '%s/    / /g'
    end
endfunc

imap <leader>rt <esc>:call RemoveTabs()<cr>
nmap <leader>rt :call RemoveTabs()<cr>
vmap <leader>rt <esc>:call RemoveTabs()<cr>

" \ra                 一键清理当前代码文件
nmap <leader>ra <esc>\rt<esc>\rb<esc>gg=G<esc>gg<esc>

" \th                 一键生成与当前编辑文件同名的HTML文件 [不输出行号]
imap <leader>th <esc>:set nonumber<cr>:set norelativenumber<cr><esc>:TOhtml<cr><esc>:w %:r.html<cr><esc>:q<cr>:set number<cr>:set relativenumber<cr>
nmap <leader>th <esc>:set nonumber<cr>:set norelativenumber<cr><esc>:TOhtml<cr><esc>:w %:r.html<cr><esc>:q<cr>:set number<cr>:set relativenumber<cr>
vmap <leader>th <esc>:set nonumber<cr>:set norelativenumber<cr><esc>:TOhtml<cr><esc>:w %:r.html<cr><esc>:q<cr>:set number<cr>:set relativenumber<cr>

" ======= 编译 && 运行 && 模板 ======= "
" 编译并运行
func! Compile_Run_Code()
    exec 'w'
    if &filetype == 'asm'
        if g:isWIN
            exec '!nasm -f win64 %:t && gcc -m64 -o %:r %:r.obj && %:r.exe'
        elseif g:isMAC
            exec '!nasm -f macho64 %:t && ld -macosx_version_min 10.7.0 -lSystem -o %:r %:r.o && ./%:r'
        else
            exec '!nasm -f elf64 %:t && gcc -nostdlib -o %:r %:r.o && ./%:r'
        endif
    elseif &filetype == 'c'
        if g:isWIN
            exec '!gcc -Wall -std=c11 -o %:r %:t && %:r.exe'
        else
            exec '!clang -Wall -std=c11 -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'cpp'
        if g:isWIN
            exec '!g++ -Wall -std=c++14 -o %:r %:t && %:r.exe'
        else
            exec '!clang++ -Wall -std=c++14 -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'd'
        if g:isWIN
            exec '!dmd -wi %:t && del %:r.obj && %:r.exe'
        else
            exec '!dmd -wi %:t && rm %:r.o && ./%:r'
        endif
    elseif &filetype == 'rust'
        if g:isWIN
            exec '!rustc %:t && %:r.exe'
        else
            exec '!rustc %:t && ./%:r'
        endif
    elseif &filetype == 'go'
        if g:isWIN
            exec '!go build %:t && %:r.exe'
        else
            exec '!go build %:t && ./%:r'
        endif
    elseif &filetype == 'nim'
        if g:isWIN
            exec '!nim c %:t && %:r.exe'
        else
            exec '!nim c %:t && ./%:r'
        endif
    elseif &filetype == 'crystal'
        if g:isWIN
            exec '!crystal build %:t && %:r.exe'
        else
            exec '!crystal build %:t && ./%:r'
        endif
    elseif &filetype == 'vala'
        if g:isWIN
            exec '!valac %:t && %:r.exe'
        else
            exec '!valac %:t && ./%:r'
        endif
    elseif &filetype == 'objc'
        if g:isMAC
            exec '!clang -fobjc-arc -framework Foundation %:t -o %:r && ./%:r'
        endif
    elseif &filetype == 'swift'
        if g:isMAC
            exec '!swift %:t'
        endif
    elseif &filetype == 'java'
        exec '!javac %:t && java %:r'
    elseif &filetype == 'cs'
        if g:isWIN
            exec '!csc %:t && %:r.exe'
        else
            exec '!mcs %:t && mono %:r.exe'
        endif
    elseif &filetype == 'erlang'
        exec '!escript %:t'
    elseif &filetype == 'scheme' || &filetype == 'racket'
        exec '!racket -fi %:t'
    elseif &filetype == 'lisp'
        exec '!sbcl --load %:t'
    elseif &filetype == 'ocaml'
        if g:isWIN
            exec '!ocamlc -o %:r.exe %:t && %:r.exe'
        else
            exec '!ocamlc -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'haskell'
        if g:isWIN
            exec '!ghc -o %:r %:t && %:r.exe'
        else
            exec '!ghc -o %:r %:t && ./%:r'
        endif
    elseif &filetype == 'lua'
        exec '!lua %:t'
    elseif &filetype == 'perl'
        exec '!perl %:t'
    elseif &filetype == 'php'
        exec '!php %:t'
    elseif &filetype == 'python'
        exec '!python %:t'
    elseif &filetype == 'ruby'
        exec '!ruby %:t'
    elseif &filetype == 'groovy'
        exec '!groovy %:t'
    elseif &filetype == 'kotlin'
        exec '!kotlinc-jvm %:t -include-runtime -d %:r.jar && java -jar %:r.jar'
    elseif &filetype == 'scala'
        exec '!scala %:t'
    elseif &filetype == 'clojure'
        exec '!clojure -i %:t -r'
    elseif &filetype == 'fsharp'
        if g:isWIN
            exec '!fsc %:t && %:r.exe'
        else
            exec '!fsharpc %:t && ./%:r'
        endif
    elseif &filetype == 'elixir'
        exec '!elixir %:t'
    elseif &filetype == 'julia'
        exec '!julia %:t'
    elseif &filetype == 'dart'
        exec '!dart %:t'
    elseif &filetype == 'haxe'
        exec '!haxe -main %:r --interp'
    elseif &filetype == 'io'
        exec '!io %:t'
    elseif &filetype == 'r'
        exec '!Rscript %:t'
    elseif &filetype == 'coffee'
        exec '!coffee -c %:t && node --harmony %:r.js'
    elseif &filetype == 'typescript'
        exec '!tsc %:t && node --harmony %:r.js'
    elseif &filetype == 'ls'
        exec '!lsc -c %:t && node --harmony %:r.js'
    elseif &filetype == 'javascript'
        exec '!node --harmony %:t'
    elseif &filetype == 'sh'
        exec '!bash %:t'
    endif
endfunc

" <F5>        一键保存、编译、运行
imap <F5> <esc>:call Compile_Run_Code()<cr>
nmap <F5> :call Compile_Run_Code()<cr>
vmap <F5> <esc>:call Compile_Run_Code()<cr>

" 移除空白行超过两行的空白行
function! RemoveBlankLines()
    :%s/^\s\+$//
    " :%s/\n\{3,\}/\r\r/
    :%s/\(^$\n\)\{2,}/\1
endfunction
nmap <Leader>k :call RemoveBlankLines()<CR>

nmap     <leader>f <Plug>CtrlSFPrompt
nnoremap <leader>o :CtrlSFOpen<CR>
"nnoremap <C-F>t :CtrlSFToggle<CR>
"inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" 使用GUI界面时的设置
if g:isGUI
    " 启动时自动最大化窗口
    if g:isWIN
        au GUIEnter * simalt ~x
    endif
    "winpos 120 90            " 指定窗口出现的位置，坐标原点在屏幕左上角
    set lines=30 columns=150 " 指定窗口大小，lines为高度，columns为宽???
    set guioptions+=c        " 使用字符提示???
    set guioptions-=m        " 隐藏菜单???
    set guioptions-=T        " 隐藏工具???
    set guioptions-=L        " 隐藏左侧滚动???
    set guioptions-=r        " 隐藏右侧滚动???
    set guioptions-=b        " 隐藏底部滚动???
    set showtabline=0        " 隐藏Tab???
    set cursorline           " 高亮突出当前???
    " set cursorcolumn       " 高亮突出当前???
    nmap <silent> <c-F11> :if &guioptions =~# 'm' <Bar>
                \set guioptions-=m <Bar>
                \set guioptions-=T <Bar>
                \set guioptions-=r <Bar>
                \set guioptions-=L <Bar>
                \else <Bar>
                \set guioptions+=m <Bar>
                \set guioptions+=T <Bar>
                \set guioptions+=r <Bar>
                \set guioptions+=L <Bar>
                \endif<CR>
    "
endif

"  < gvimfullscreen >
" -----------------------------------------------------------------------------
if (g:isWIN && g:isGUI)
    nmap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif
if (g:isWIN && g:isGUI)
    let g:Current_Alpha = 255
    let g:Top_Most = 0
    let g:MyVimLib = 'gvimfullscreen.dll'
    func! Alpha_add()
        let g:Current_Alpha = g:Current_Alpha + 10
        if g:Current_Alpha > 255
            let g:Current_Alpha = 255
        endif
        call libcallnr("vimtweak.dll","SetAlpha",g:Current_Alpha)
    endfunc
    func! Alpha_sub()
        let g:Current_Alpha = g:Current_Alpha - 10
        if g:Current_Alpha < 155
            let g:Current_Alpha = 155
        endif
        call libcallnr("vimtweak.dll","SetAlpha",g:Current_Alpha)
    endfunc
    func! Top_window()
        if  g:Top_Most == 0
            call libcallnr("vimtweak.dll","EnableTopMost",1)
            let g:Top_Most = 1
        else
            call libcallnr("vimtweak.dll","EnableTopMost",0)
            let g:Top_Most = 0
        endif
    endfunc

    "???ݼ?????
    nmap <m-k> :call Alpha_add()<CR>
    nmap <m-j> :call Alpha_sub()<CR>
    nmap <Leader>t :call Top_window()<CR>
endif

" 根据后缀名指定文件类型
au BufRead,BufNewFile *.phpt     setlocal ft=php
au BufRead,BufNewFile *.inc      setlocal ft=php
au BufRead,BufNewFile *.sql      setlocal ft=mysql
au BufRead,BufNewFile *.tpl      setlocal ft=smarty
au BufRead,BufNewFile *.txt      setlocal ft=txt
au BufRead,BufNewFile *.log      setlocal ft=conf
au BufRead,BufNewFile hosts      setlocal ft=conf
au BufRead,BufNewFile *.conf     setlocal ft=dosini
au BufRead,BufNewFile http*.conf setlocal ft=apache
au BufRead,BufNewFile nginx.conf setlocal ft=nginx
au BufRead,BufNewFile *.ini      setlocal ft=dosini
" 针对部分语言加减指定字符的单词属性
au FileType perl,php       set iskeyword-=.
au FileType perl,php       set iskeyword-=$
au FileType perl,php       set iskeyword-=-
au FileType css,scss,less  set iskeyword+=.
au FileType css,scss,less  set iskeyword+=#
au FileType css,scss,less  set iskeyword+=-
au FileType nginx          set iskeyword-=/
au FileType nginx          set iskeyword-=.

" 针对部分语言添加字典补全
au FileType php        call AddPHPDict()
au FileType python     call AddPythonDict()
au FileType javascript call AddJavaScriptDict()
au FileType css        call AddCSSDict()

function! AddPHPDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/php.txt
    else
        set dict+=~/.vim/dict/php.txt
    endif
    set complete+=k
endfunction

function! AddPythonDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/python.txt
    else
        set dict+=~/.vim/dict/python.txt
    endif
    set complete+=k
endfunction

function! AddJavaScriptDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/javascript.txt
    else
        set dict+=~/.vim/dict/javascript.txt
    endif
    set complete+=k
endfunction

function! AddCSSDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/css.txt
    else
        set dict+=~/.vim/dict/css.txt
    endif
    set complete+=k
endfunction

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'php' : $VIMFILES.'/dict/php.txt',
            \ 'javascript' : $VIMFILES.'/dict/javascript.txt',
            \ 'css' : $VIMFILES.'/dict/css.txt'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 0

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500  " default value
let g:gitgutter_diff_args = '-w'
" GitGutter           Git辅助插件
let g:gitgutter_enabled               = 1      " 默认不开启
let g:gitgutter_signs                 = 1      " 默认不开启提示
let g:gitgutter_highlight_lines       = 0      " 默认不高亮行
let g:gitgutter_diff_args = '-w'                "空白不检测
let g:gitgutter_realtime = 0

" 加密文件
nmap ;g ggVGg?

" 小技巧
"   :g/{pattern}/d "删除匹配行
"   :v/{pattern}/d "保留匹配行
"“[range]”指“g”命令运行的范围，默认情况下是整个buffer，如果需要指定1至10行，这样写：

"     :1,10g/{pattern}/{cmd}
"
"       :g/^[^ ].*\n \{4}声.*/normal "A2dd

set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
" When save .vimrc, auto reload it
autocmd! BufWritePost *vimrc* so %

" 重复*号并与上一行对齐
inoremap <expr> <C-r>* repeat('*', strdisplaywidth(getline(line('.')-1))-strdisplaywidth(getline('.')))
" Make Y yank everything from the cursor to the end of the line. This makes Y
" act more like C or D because by default, Y yanks the current line (i.e. the
" same as yy).
noremap Y y$

" Allows you to easily replace the current word and all its occurrences.
nnoremap ,r :%s/<C-r><C-w>/
vnoremap ,r y:%s/<C-r>"/


let g:user_emmet_settings = {
    \ 'wxss': {
    \   'extends': 'css',
    \ },
    \ 'wxml': {
    \   'extends': 'html',
    \   'aliases': {
    \     'div': 'view',
    \     'span': 'text',
    \   },
    \  'default_attributes': {
    \     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
    \     'navigator': [{'url': '', 'redirect': 'false'}],
    \     'scroll-view': [{'bindscroll': ''}],
    \     'swiper': [{'autoplay': 'false', 'current': '0'}],
    \     'icon': [{'type': 'success', 'size': '23'}],
    \     'progress': [{'precent': '0'}],
    \     'button': [{'size': 'default'}],
    \     'checkbox-group': [{'bindchange': ''}],
    \     'checkbox': [{'value': '', 'checked': ''}],
    \     'form': [{'bindsubmit': ''}],
    \     'input': [{'type': 'text'}],
    \     'label': [{'for': ''}],
    \     'picker': [{'bindchange': ''}],
    \     'radio-group': [{'bindchange': ''}],
    \     'radio': [{'checked': ''}],
    \     'switch': [{'checked': ''}],
    \     'slider': [{'value': ''}],
    \     'action-sheet': [{'bindchange': ''}],
    \     'modal': [{'title': ''}],
    \     'loading': [{'bindchange': ''}],
    \     'toast': [{'duration': '1500'}],
    \     'audio': [{'src': ''}],
    \     'video': [{'src': ''}],
    \     'image': [{'src': '', 'mode': 'scaleToFill'}],
    \   }
    \ },
    \}
