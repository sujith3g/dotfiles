set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard=unnamed " Enable system clipboard in OS X

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" For javascript
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Powerline Configurations
" Always show statusline
"set laststatus=2 
"let g:Powerline_symbols = 'unicode'
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after this line
set t_Co=256
syntax enable " Enable syntax highlighting
set background=dark " Set dark background
colorscheme onedark " Set color scheme
set nu " Enable line numbers
set backspace=indent,eol,start
set cursorline "highlight currentline

" My PowerLine Configs
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

" My NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>

"Indentation
" by default, the indent is 2 spaces. 
set shiftwidth=2
set softtabstop=2
set tabstop=2
"Indentation for WebDevelopment
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
autocmd FileType javascript,css,php set textwidth=79

" for markdown file syntax highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"Disable Arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
