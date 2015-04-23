let mapleader = ','
"不要兼容vi
set nocompatible

" Make command line two lines high"
set ch=2
set ts=4
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1,gbk,gb2312
set fileformats=unix
set scrolloff=3
set foldnestmax=2

set hlsearch incsearch
set ignorecase smartcase

set number
set autoindent
set showmatch
set noshowmode
set ttyfast
set ruler

set autoread
set backspace=indent,eol,start


"自动换行
set wrap
"去除左右两边的滚动条
set go-=r
set go-=L

"打开高亮
syntax enable

set fdm=indent
"key maps
map <C-M> :tabnew<CR>
map <C-N> :tabnext<CR>
map <C-P> :tabpre<CR>

nnoremap <leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>, :tabnew <C-R>=expand('%:p:h') . '/'<CR>
inoremap jj <Esc>
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <C-H> :set hls<CR><C-L>

"tagbar
nmap <leader>t :TagbarToggle<CR>

"ctags
set tags=./.git/tags,./tags,~/.vim/tags;
set autochdir

"屏蔽掉讨厌的F1键
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"取消粘贴缩进
nmap <leader>p :set paste<CR>
nmap <leader>pp :set nopaste<CR>

"插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-f> <right>
inoremap <c-b> <left>
inoremap <c-a> <home>
inoremap <c-e> <end>
"esc的映射
imap jj <esc>


nnoremap Y y$

"设置NERDTree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
map <C-C> :NERDTreeFind<CR>
map <C-X> :NERDTreeToggle<CR>

"powerline
set laststatus=2
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
let g:showmarks_enable = 0
let g:showmarks_include = "abcdefghijklmnopqrstuvwxyz".
                        \ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:showmarks_textlower = " "
let g:showmarks_textupper = " "
let g:showmarks_textother = " "
let g:showmarks_hlline_lower = 1
let g:showmarks_hlline_upper = 1
let g:showmarks_hlline_other = 1

"tab键显示待选项
set wildmenu


set t_Co=256
colorscheme pablo
"colorscheme desert
"设置光标高亮显示
set cursorline    "same as set cul
"set cursorcolumn  "same as set cuc
hi CursorLine term=bold cterm=bold guibg=Grey40
"colorscheme solarized
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"if has('gui_running')
"     set background=light
"else
"     set background=dark
"endif

"将-连接符也设置为单词
set isk+=-

"自动载入配置文件不需要重启
autocmd! bufwritepost _vimrc source %

"行号自动跳转
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


"vim 插件管理 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'https://github.com/nsf/gocode.git', {'rtp': 'vim/'}
Plugin 'ZenCoding.vim'
Plugin 'matchit.zip'
Plugin 'ShowTrailingWhitespace'
Plugin '_jsbeautify'
Plugin 'EasyMotion'
Plugin 'FencView.vim'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'snipMate'
Plugin 'bufexplorer.zip'
Plugin 'taglist.vim'
Plugin 'OmniCppComplete'
Plugin 'https://github.com/Lokaltog/vim-powerline'
Plugin 'https://github.com/Shougo/neocomplcache.git'
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'https://github.com/fatih/vim-go.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"auto complete
let g:neocomplcache_enable_at_startup=1

"必须的设置：
filetype on

" Golang
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
