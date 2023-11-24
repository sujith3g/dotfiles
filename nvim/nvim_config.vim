" Install Plug if it is not already installed
if !filereadable(expand("~/.config/nvim/autoload/plug.vim", 1))
  silent call mkdir(expand("~/.config/nvim/autoload", 1), 'p')
  exe '!curl -fLo '.expand("~/.config/nvim/autoload/plug.vim", 1)
      \ .' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif
" Program to use for evaluating python code
" let g:python_host_prog = '/Users/sujith/pynvim/py2env/bin/python'
let g:python3_host_prog  = '/Users/sujith/pynvim/py3env/bin/python'

" let g:deoplete#enable_at_startup = 1

" switch cursor to line when in insert mode, and block when not
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

filetype off                  " required
" migrated
set clipboard=unnamed " Enable system clipboard in OS X

call plug#begin('~/.local/share/nvim/bundle')

" For file explorer in sublime/textmate.
Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }
" migrated
" Tabularize text using patterns/regex
Plug 'godlygeek/tabular'
"{"""""""""""""""""""Syntax""""""""""""""""""""

" Markdown syntax support for vim
Plug 'plasticboy/vim-markdown', { 'for': 'markdown'}
" For typescript syntax support
Plug 'leafgarland/typescript-vim'
" migrated
" Javascript syntax support
Plug 'pangloss/vim-javascript', { 'for': 'js' }
" Plugin for json indent
Plug 'elzr/vim-json', { 'for': 'json' }
" For ecmascript6 syntax support
Plug 'isRuslan/vim-es6'
" for html-js indentation
Plug 'vim-scripts/JavaScript-Indent', { 'for': 'js' }
" for vertical line to show indent-level
Plug 'yggdroot/indentline'
" for jsx
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'mxw/vim-jsx', { 'for': 'jsx' }
" for .editorconfig
Plug 'editorconfig/editorconfig-vim'

""""""""""""""""""End-of Syntax"""""""""""""""}
" Goto matching {,(,",', or html-tag using % key.
Plug 'vim-scripts/matchit.zip', { 'for': 'html' }
" Git wraper for vim
Plug 'tpope/vim-fugitive'
" Hub for fugitive, for Github support
Plug 'tpope/vim-rhubarb'
" Plugin shows git diff
Plug 'airblade/vim-gitgutter'
" For surrounding text with "",'',{},(),etc.
Plug 'tpope/vim-surround'
" For fuzzy search using CtrlP
" Plug 'kien/ctrlp.vim'
" for autocompletion
Plug 'Valloric/YouCompleteMe'
" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" tern for JS support in YouCompleteMe
Plug 'marijnh/tern_for_vim', { 'for': 'js' }
" vim-orgmode - Text outlining and task management for Vim
Plug 'jceb/vim-orgmode', { 'for': 'org'}
" vimwiki for - A PERSONAL WIKI FOR VIM
Plug 'vimwiki/vimwiki'
" speeddating - For date/timestamp manipulation, reqd for vim-rgmode.
Plug 'tpope/vim-speeddating'
" ag plugin for searching across files/folders using ag
Plug 'rking/ag.vim'
" gundo plugin for visualize vim undo tree.
Plug 'sjl/gundo.vim'
" vimshell dependency
Plug 'Shougo/vimproc.vim'
" vimshell dependancy
Plug 'Shougo/unite.vim'
" Vimfiler for unite, unite dependency
Plug 'Shougo/vimfiler.vim'
" commentry for commenting
Plug 'tpope/vim-commentary'
" solarized color-scheme
Plug 'altercation/vim-colors-solarized'
" for html tag auto-closing
Plug 'docunext/closetag.vim', { 'for': 'html' }
" DelimitMate for ",',).. auto closing
Plug 'Raimondi/delimitMate'
" for close all but current buffer.
Plug 'vim-scripts/BufOnly.vim'
" for html,js,css beautify
Plug 'maksimr/vim-jsbeautify'
" for html,js,css beautify
Plug 'einars/js-beautify'
" autoheader for FileHeader/Template
Plug 'shanzi/autoHEADER'
" for displaying, toggle marks.
Plug 'kshenoy/vim-signature'
" Plugin for moving between tmux splits and vim splits
Plug 'christoomey/vim-tmux-navigator'
" Plugin for highlightinh syntax errors
" Plug 'scrooloose/syntastic'
" Plug 'neomake/neomake'
"for search, substitute and abbreviate multiple variants of a word.
Plug 'tpope/vim-abolish', { 'for': 'markdown'}
" for airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Highlight yanked content
Plug 'machakann/vim-highlightedyank'
" Floobit for pair programming
" Plug 'floobits/floobits-neovim'
" For Ale linter
Plug 'w0rp/ale'
" VimGame Code break
Plug 'johngrib/vim-game-code-break'
" for editing encrypted/gpg files
Plug 'jamessan/vim-gnupg'
" Plug 'robertkrimen/vim-gnupg'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" For github copilot
" Plug 'github/copilot.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugUpdate - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" :PlugStatus
"
" see :h vundle for more details or wiki for FAQ

" Put your non-Plugin stuff after self line
set t_Co=256
syntax enable " Enable syntax highlighting
" migrated
set background=dark " Set dark background
" migrated
colorscheme solarized " Set color scheme
" migrated
set number " Enable line numbers
" migrated
set backspace=indent,eol,start
" migrated
set cursorline "highlight currentline
" migrated
" Set scrolling when you are 8 line away from margin
set scrolloff=7
" migrated
"For hiding modified buffers without warning message
set hidden
" migrated
"To disable log from javascript-indent, ~/.vim/indent/javascript.vim
set inccommand=nosplit  " Shows the effects of a sub command incrementally as you type.
let g:js_indent_log = 0

" Set Leader key as comma
let mapleader = ","
" migrated
" Set LocalLeader key as ';'
let maplocalleader = " "
" migrated

" for vim-gnupg
let g:GPGPrimeAgent = 1
" migrated

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
" migrated
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
"   Ale                  "
""""""""""""""""""""""""""

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '∆'

" " move to next error
nmap <Leader>] :lnext<CR>
" " move to previous error.
nmap <Leader>[ :lprev<CR>
nnoremap <Leader>af :ALEFix<cr>

let g:ale_open_list = 'on_save'

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

nmap gD :ALEGoToDefinition<CR>

" set filtype for tsx
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.tsx set filetype=typescript.tsx
augroup END

" disable eslint from typescript files
" enable stylelint for jsx,tsx
let g:ale_linters = {
      \ 'typescript': ['tslint'],
      \ 'jsx': ['stylelint', 'eslint'],
      \ 'javascript': ['eslint'],
      \ 'tsx': ['stylelint', 'tslint'],
      \}

let g:ale_linter_aliases = {
      \ 'jsx': 'css',
      \ 'tsx': 'css',
      \}

let g:ale_fixers = {
\   'json': ['jq'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'tsx': ['prettier'],
\   'sql': ['sql-formatter-cli'],
\}

augroup CloseLoclistWindowGroup
    autocmd!
    autocmd QuitPre * if empty(&buftype) | lclose | endif
  augroup END

"""""""""""""""""""""""""}

"{""""""""""""""""""""""""
"   Neomake              "
""""""""""""""""""""""""""

" let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']
" autocmd! BufWritePost,BufEnter *.ts Neomake
" autocmd! BufWritePost,BufEnter *.tsx Neomake

" let g:neomake_javascript_enabled_makers = ['eslint']
" autocmd! BufWritePost,BufEnter *.js Neomake

" let g:neomake_open_list = 2


" let g:neomake_warning_sign = {
"   \ 'text': '∆',
"   \ 'texthl': 'WarningMsg',
"   \ }
" let g:neomake_error_sign = {
"   \ 'text': '✗',
"   \ 'texthl': 'WarningMsg',
"   \ }
" close quickfix window with buffer
" autocmd BufWinEnter quickfix nnoremap <silent> <buffer>
"                 \   q :cclose<cr>:lclose<cr>
"     autocmd BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
"                 \   bd|
"                 \   q | endif

"""""""""""""""""""""""""}

" For ag Plugin integration
let g:ackprg = 'ag --vimgrep'

"To disable documentation for tern_for_vim in top split window
set completeopt-=preview

" For showing tabs,newlines,trailing-white-spaces,etc.
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
" migrated
set list
" migrated

"Indentation
" by default, use 2 spaces for indent.
set shiftwidth=2
" migrated
" number of spaces in tab when editing
set softtabstop=2
" migrated
" number of visual spaces per TAB
set tabstop=2
" migrated
" tabs are spaces
set expandtab
" migrated

" reselect visual block after indent/outdent
vnoremap < <gv
" migrated
vnoremap > >gv
" migrated

" Config for gpg plugin
let g:GPGPrimeAgent = 1
" migrated
autocmd User GnuPG setl textwidth=72

" For folding
" set foldmethod=syntax

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
autocmd Filetype markdown setlocal textwidth=72
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
autocmd FileType markdown,json nnoremap <space> za
" autocmd FileType javascript nnoremap <space> zf%
autocmd FileType json nnoremap <space> za
" <Enter> for newline without entering insert-mode, except on quickfix buffer
function! NewlineEnter()
  if &buftype ==# 'quickfix'
    execute "normal! \<CR>"
  else
    normal! o
  endif
endfunction

nnoremap <CR> :call NewlineEnter()<CR>
nmap <S-Enter> O

" My NerdTree shortcut
map <C-n> :NERDTreeToggle<CR>
" migrated
" Show hidden files in NerdTree by default
let g:NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.DS_Store$']
" migrated

" For underline markdown headings
nnoremap <leader>u1 :call UnderlineHeading(1)<CR>
nnoremap <leader>u2 :call UnderlineHeading(2)<CR>
nnoremap <leader>u3 :call UnderlineHeading(3)<CR>

" for html,js,css beautify
autocmd FileType javascript noremap <buffer>  <c-f> :ALEFix<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :ALEFix<cr>
" for css or css
autocmd FileType css noremap <buffer> <c-f> :ALEFix<cr>
" for css or json
autocmd FileType json noremap <buffer> <c-f> :ALEFix<cr>
autocmd FileType typescript noremap <buffer>  <c-f> :ALEFix<cr>
" for SQL
autocmd FileType sql noremap <buffer> <c-f> :%!sql-formatter-cli<cr>
" autocmd FileType sql noremap <buffer> <c-f> :ALEFix<cr>

" for toggling spell checking
nmap <silent><leader>s :set spell!<CR>
"set spell check language as British English
set spelllang=en_gb
" migrated
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
" migrated

" Disable highlight untill next search
nnoremap <esc><esc> :noh<return>
" migrated

" Tab movements
nnoremap <leader>m :tabn<CR>
nnoremap <leader>n :tabp<CR>
" migrated

" List buffers using CtrlPBuufers
" nnoremap <leader>p :CtrlPBuffer<CR>
" File search using unite instead of ctrlp
" nnoremap <C-p> :Unite file_rec/async<cr>
" List buffers using FZF
nnoremap <leader>p :Buffers<CR>
" migrated
" File search using FZF instead of unite
nnoremap <silent> <C-p> :Files<CR>
" migrated

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
" TODO
" AU groupings
" Folds for markdown, json, yaml
" more snippets - done
" remaining global configs
