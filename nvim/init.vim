" Install Vundle if it is not already installed
if !filereadable(expand("~/.config/nvim/bundle/Vundle.vim/README.md"))
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
endif
" Program to use for evaluating python code
"" let g:python_host_prog  = '/usr/local/bin/python'

" switch cursor to line when in insert mode, and block when not
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

filetype off                  " required
set clipboard=unnamed " Enable system clipboard in OS X

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/VunDle.vim'
" For file explorer in sublime/textmate.
Plugin 'scrooloose/nerdtree'
" Tabularize text using patterns/regex
Plugin 'godlygeek/tabular'
"{"""""""""""""""""""Syntax""""""""""""""""""""

" Markdown syntax support for vim
Plugin 'plasticboy/vim-markdown'
" Javascript syntax support
Plugin 'pangloss/vim-javascript'
" Plugin for json indent
Plugin 'elzr/vim-json'
" For ecmascript6 syntax support
Plugin 'isRuslan/vim-es6'
" for html-js indentation
Plugin 'vim-scripts/JavaScript-Indent'
" for vertical line to show indent-level
Plugin 'yggdroot/indentline'
Plugin 'mxw/vim-jsx'

""""""""""""""""""End-of Syntax"""""""""""""""}
" Goto matching {,(,",', or html-tag using % key.
Plugin 'matchit.zip'
" Git wraper for vim
Plugin 'tpope/vim-fugitive'
" Plugin shows git diff
Plugin 'airblade/vim-gitgutter'
" For surrounding text with "",'',{},(),etc.
Plugin 'tpope/vim-surround'
" For fuzzy search using CtrlP
Plugin 'kien/ctrlp.vim'
" YouCompleteMe for autocompletion
Plugin 'Valloric/YouCompleteMe'
" tern for JS support in YouCompleteMe
Plugin 'marijnh/tern_for_vim'
" vim-orgmode - Text outlining and task management for Vim
Plugin 'jceb/vim-orgmode'
" vimwiki for - A PERSONAL WIKI FOR VIM
Plugin 'vimwiki/vimwiki'
" speeddating - For date/timestamp manipulation, reqd for vim-rgmode.
Plugin 'tpope/vim-speeddating'
" ag plugin for searching across files/folders using ag
Plugin 'rking/ag.vim'
" gundo plugin for visualize vim undo tree.
Plugin 'sjl/gundo.vim'
" vimshell dependency
Plugin 'Shougo/vimproc.vim'
" vimshell dependancy
Plugin 'Shougo/unite.vim'
" Vimfiler for unite, unite dependency
Plugin 'Shougo/vimfiler.vim'
" commentry for commenting
Plugin 'tpope/vim-commentary'
" solarized color-scheme
Plugin 'altercation/vim-colors-solarized'
" for html tag auto-closing
Plugin 'docunext/closetag.vim'
" DelimitMate for ",',).. auto closing
Plugin 'Raimondi/delimitMate'
" for close all but current buffer.
Plugin 'BufOnly.vim'
" for html,js,css beautify
Plugin 'maksimr/vim-jsbeautify'
" for html,js,css beautify
Plugin 'einars/js-beautify'
" autoheader for FileHeader/Template
Plugin 'shanzi/autoHEADER'
" for displaying, toggle marks.
Plugin 'kshenoy/vim-signature'
" Plugin for moving between tmux splits and vim splits
Bundle 'christoomey/vim-tmux-navigator'
" Plugin for highlightinh syntax errors
" Plugin 'scrooloose/syntastic'
Plugin 'neomake/neomake'
"for search, substitute and abbreviate multiple variants of a word.
Plugin 'tpope/vim-abolish'
" for airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


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
colorscheme solarized " Set color scheme
set nu " Enable line numbers
set backspace=indent,eol,start
set cursorline "highlight currentline
" For hiding modified buffers without warning message
set hidden
"To disable log from javascript-indent, ~/.vim/indent/javascript.vim
let g:js_indent_log = 0

" Set Leader key as comma
let mapleader = ","
" Set LocalLeader key as ';'
let maplocalleader = " "

"{""""""""""""""""""""""""""
"    Airline configs    "
"""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
"""""""""""""""""""""""""""

"{""""""""""""""""""""""""""
"    Powerline configs    "
"""""""""""""""""""""""""""
" My PowerLine Configs
" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
" set laststatus=2
" let g:Powerline_symbols = 'fancy'
" set fillchars+=stl:\ ,stlnc:\
"""""""""""""""""""""""""""}

"for keeping swap files in separate directory
set directory=~/.nvim_tmp/swap
"for keeping undo in separate directory
set undodir=~/.nvim_tmp/undo_dir

"{""""""""""""""""""""""""
"    gundo configs      "
"""""""""""""""""""""""""
let g:gundo_width = 40
let g:gundo_preview_height = 40
let g:gundo_right = 0  " keep gundo_preview left-side
nnoremap <F5> :GundoToggle<CR>
"""""""""""""""""""""""""}

"{""""""""""""""""""""""""
"    vimshell configs   "
"""""""""""""""""""""""""
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '
" open new splits actually in new tab
let g:vimshell_split_command = "tabnew"
let g:vimshell_editor_command = "mvim"
if has("gui_running")
  let g:vimshell_editor_command = "mvim"
endif
"""""""""""""""""""""""""}

"{""""""""""""""""""""""""
"    ctrlp configs      "
"""""""""""""""""""""""""
" For ctrlp plugin
set runtimepath^=~/.config/nvim/bundle/ctrlp.vim
" For ctrlp to search hidden files
let g:ctrlp_show_hidden = 1
"""""""""""""""""""""""""}

"{""""""""""""""""""""""""
"     Fileheader        "
"""""""""""""""""""""""""
let g:autoHEADER_auto_enable = 0
let g:autoHEADER_fill_char_repeat = 70
let g:autoHEADER_default_author = "sujith <sujith3g(at)gmail(dot)com>"
"""""""""""""""""""""""""}

"{""""""""""""""""""""""""
"     Syntastic         "
"""""""""""""""""""""""""
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_loc_list_height=5
"
"let g:syntastic_javascript_checkers = ['eslint']
"let syntastic_mode_map = { 'passive_filetypes': ['html'] }
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_style_error_symbol = '✠'
"let g:syntastic_warning_symbol = '∆'
"let g:syntastic_style_warning_symbol = '≈'
"
"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn
"
"""""""""""""""""""""""""}

"{""""""""""""""""""""""""
"   Neomake              "
""""""""""""""""""""""""""

let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_open_list = 2

" move to next error
nmap <Leader>] :lnext<CR>
" move to previous error.
nmap <Leader>[ :lprev<CR>

let g:neomake_warning_sign = {
  \ 'text': '∆',
  \ 'texthl': 'WarningMsg',
  \ }
let g:neomake_error_sign = {
  \ 'text': '✗',
  \ 'texthl': 'WarningMsg',
  \ }
" close quickfix window with buffer
autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
                \   q :cclose<cr>:lclose<cr>
    autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
                \   bd|
                \   q | endif

"""""""""""""""""""""""""}

" For ag Plugin integration
let g:ackprg = 'ag --vimgrep'

"To disable documentation for tern_for_vim in top split window
set completeopt-=preview

" For showing tabs,newlines,trailing-white-spaces,etc.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

"Indentation
" by default, use 2 spaces for indent.
set shiftwidth=2
" number of spaces in tab when editing
set softtabstop=2
" number of visual spaces per TAB
set tabstop=2
" tabs are spaces
set expandtab

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" For folding
"set foldmethod=indent

"Indentation for WebDevelopment
autocmd FileType javascript,html,css,php set ai
autocmd FileType javascript,html,css,php set sw=2
autocmd FileType javascript,html,css,php set ts=2
autocmd FileType javascript,html,css,php set sts=2
"" For highlighting 79th char to show Long lines
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=DarkGray guibg=#592929
  autocmd BufEnter * match OverLength /\%79v./
augroup END

" for markdown file syntax highlighting
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
autocmd FileType markdown set ai formatoptions=tcroqn2 comments=n:>
" for replacing abbreviations in markdown files
autocmd FileType markdown source ~/.vim_abbreviations
" Open NERDTree if no file argument provided
autocmd vimenter * if !argc() | NERDTree | endif
" Allow us to use Ctrl-s and Ctrl-q as keybinds
" silent !stty -ixon

" Restore default behaviour when leaving Vim.
" autocmd VimLeave * silent !stty ixon

"{"""""""""""""""""""""""""""""""""""""
"          Functions                 "
""""""""""""""""""""""""""""""""""""""
function! UnderlineHeading(level)
  if a:level == 1
    normal! yypVr=
  elseif a:level == 2
    normal! yypVr-
  else
    normal! I###
  endif
endfunction
"""""""""""""""""""""""""""""""""""""""}

"{""""""""""""""""""""""""""""""""""""""
"          Key Maps                   "
"""""""""""""""""""""""""""""""""""""""
" space open/closes folds
autocmd FileType markdown nnoremap <space> za
autocmd FileType javascript nnoremap <space> za
" <Enter> for newline without entering insert-mode, except on quickfix buffer
function! NewlineEnter()
  if &buftype ==# 'quickfix'
    execute "normal! \<CR>"
  else
    normal! o
  endif
endfunction

nnoremap <CR> :call NewlineEnter()<CR>

" My NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>
" Show hidden files in NerdTree by default
let g:NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$']

" For underline markdown headings
nnoremap <leader>u1 :call UnderlineHeading(1)<CR>
nnoremap <leader>u2 :call UnderlineHeading(2)<CR>
nnoremap <leader>u3 :call UnderlineHeading(3)<CR>

" for html,js,css beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" for toggling spell checking
nmap <silent><leader>s :set spell!<CR>
"set spell check language as British English
set spelllang=en_gb
"enable spell checking for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell
"enable spell checkig for git commit message
autocmd FileType gitcommit setlocal spell

" Bubble single lines
"nmap <C-up> ddkP
"nmap <C-down> ddp
" Bubble multiple lines
"vmap <C-Up> xkP`[V`]
"vmap <C-Down> xp`[V`]

" <F3> For enable/disable relativenumber
noremap <F3> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

" Keymaps for saving using ctrl+s
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR><C-C>

" Map jk to <Esc> from insert mode.
imap jk <Esc>

" Disable highlight untill next search
nnoremap <esc><esc> :noh<return>

" Tab movements
nnoremap <leader>m :tabn<CR>
nnoremap <leader>n :tabp<CR>

" List buffers using CtrlPBuufers
nnoremap <leader>p :CtrlPBuffer<CR>
" File search using unite instead of ctrlp
nnoremap <C-p> :Unite file_rec/async<cr>

" Unite settings
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
" Semicolon is just colon
" nnoremap ; :

" For recursive unfolding
noremap <leader><space> zO
" Reload vimrc.
nnoremap <Leader>r :source $MYVIMRC<CR>

" Splits tweaks {{{
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Disable Arrow keys
" Bubble single lines
no <down> ddp
no <up> ddkP
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
"""""""""""""""""""""""""""""""""""""""
"          End-of Key Maps            "
"""""""""""""""""""""""""""""""""""""""}
