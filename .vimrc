set nocompatible
set ignorecase smartcase
set incsearch hlsearch

set ts=2
set sw=2
set sts=2
set expandtab
set mouse=a
set wildmode=longest,list,full
set wildmenu
"Set the status line options. Make it show more information.
set laststatus=2
" set statusline=%F%m%r%h%w\%{fugitive#statusline()}[FORMAT=%{&ff}]\ [TYPE=%Y]\[POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set cursorline

" Backspace behavior
set backspace=indent,eol,start
 
call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-signify'
Plug 'vim-syntastic/syntastic'
Plug 'Yggdroot/indentLine'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
Plug 'sickill/vim-monokai'
Plug 'sickill/vim-pasta'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tomasr/molokai'
Plug 'tpope/vim-commentary'
call plug#end()
let g:rehash256 = 1

"Set Color Scheme and Font Options
colorscheme molokai

"Seetings for DeviCons
set encoding=utf-8
" set guifont=DejaVuSansMonoForPowerline_NF:h11
"set guifont=Consolas:h12
" testing rounded separators (extra-powerline-symbols):
"let g:airline_left_sep = "\uE0C1"
"let g:airline_right_sep = "\uE0C3"

" set the CN (column number) symbol:
"let g:airline_section_z = airline#section#create(["\uE0C1" . '%{line(".")}' . "\uE0C3" . '%{col(".")}'])
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
" configure which whitespace checks to enable.
  " indent: mixed indent within a line
  " long:   overlong lines
  " trailing: trailing whitespace
  " mixed-indent-file: different indentation in different lines
let g:airline#extensions#whitespace#checks = [ 'indent', 'long' ]


"set line no, buffer, search, highlight, autoindent and more.
set nocompatible
set nobackup
set noundofile
set noswapfile
set nu
" turns on relative numbering
" set rnu
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set smartindent
set ruler
set vb
set noerrorbells
set showcmd
set ts=2
set mouse=a
set history=1000
set undolevels=1000
"Signify
let g:signify_vcs_list = [ 'git', 'perforce' ]
let g:signify_disable_by_default = 0
let g:signify_sign_show_count = 1
let g:signify_cursorhold_insert     = 1
let g:signify_cursorhold_normal     = 1
let g:signify_update_on_bufenter    = 0
let g:signify_update_on_focusgained = 1
"Syntastic Settings
let g:syntastic_enable_signs=1
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"IndentLine Plugin
let g:indentLine_char = '¦'
let g:indentLine_enabled = 1

"Hilight MatchIt
let g:hl_matchit_enable_on_vim_startup = 1

"Tagbar Plugin
"nmap <F8> :TagbarToggle<CR>

"SnipMate
" imap <TAB> <Plug>snipMateNextOrTrigger
" smap <TAB> <Plug>snipMateNextOrTrigger
"let g:snipMate = {}
"let g:snipMate.scope_alias = {}
"let g:snipMate.scope_aliases = 'verilog_systemverilog'
" let g:snippets_dir= $MYVIMHOME."/Vim/vimfiles/bundle/vim-snippets/snippets"
"let g:UltiSnipsSnippetsDir = $VIMRUNTIME.'/vimfiles/bundle/vim-snippets/snippets'

set nofoldenable

" Leader
let mapleader="\<Space>"

" Copy Paste from system clipboard
vnoremap <Leader>y "+y
nnoremap <Leader>y "+y
vnoremap <Leader>Y "+Y
nnoremap <Leader>Y "+Y
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

" Toggle search highlighting
nnoremap <silent> <Leader><Space> :noh<CR>

" Moving around splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>q :qa<CR>
