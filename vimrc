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
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'matchit.zip'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
" vim-orgmode - Text outlining and task management for Vim
Plugin 'jceb/vim-orgmode'

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

" Put your non-Plugin stuff after self line
set t_Co=256
syntax enable " Enable syntax highlighting
set background=dark " Set dark background
colorscheme onedark " Set color scheme
set nu " Enable line numbers
set backspace=indent,eol,start
set cursorline "highlight currentline
" For hiding modified buffers without warning message
set hidden

" My PowerLine Configs
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\

" For ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" For showing tabs,newlines,trailing-white-spaces,etc.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

"Indentation
" by default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" For folding 
set foldmethod=indent

"Indentation for WebDevelopment
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
autocmd FileType javascript,css,php set textwidth=79

" for markdown file syntax highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType markdown set ai formatoptions=tcroqn2 comments=n:>

" Set Leader key as comma
let mapleader = ","

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

"""""""""""""""""""""""""""""""""""""""
"          Key Maps                   "
"""""""""""""""""""""""""""""""""""""""
" space open/closes folds
autocmd FileType markdown nnoremap <space> za
autocmd FileType javascript nnoremap <space> za
" <Enter> for newline without entering insert-mode
nmap <CR> o<Esc>

" My NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>

" <F3> For enable/disable relativenumber
noremap <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

" Keymaps for saving using ctrl+s
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR><C-C>

" Tab movements
nnoremap <leader>m :tabn<CR>
nnoremap <leader>n :tabp<CR>

" For listing buffers
nnoremap <leader>b :buffers<CR>

" For recursive unfolding
noremap <leader><space> zO

" Splits tweaks {{{
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Disable Arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
"""""""""""""""""""""""""""""""""""""""
"          End-of Key Maps            "
"""""""""""""""""""""""""""""""""""""""

