" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off " required

" TODO: this may not be in the correct place. It is intended to allow overriding <Leader>.
" source ~/.vimrc.before if it exists.
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden


" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" =============== Vundle Initialization ===============
set shell=/bin/bash
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" List of bundles are defined in vundles.vim file
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

call vundle#end()

" ============== Monokai colorscheme ================
"turn on syntax highlighting
syntax enable
colorscheme hybrid_reverse


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile
set undolevels=1000 "maximum number of changes that can be undone

" ================ Indentation ======================

set autoindent		" replicates indentation from the previous lines to the new one
set smartindent		" insert extra indentations for special code strucutre like classes, structs...
set smarttab		" insert shiftwidth instead of tabstop at the beginning of the line, allows tab deletion with <BS>
set shiftwidth=4	" number of columns when using reindent commands (<< and >>)
set softtabstop=4	" number of spaces inserted when 'Tab' is hitted in insert mode
set tabstop=4		" number of columns in a tab
set noexpandtab		" do not replace tab with spaces

" Special indent for html
au FileType html,htmldjango setl sw=2 sts=2 ts=2
au FileType html,htmldjango setl sw=2 sts=2 ts=2
au BufNewFile,BufRead *.sls setl sw=2 sts=2 ts=2
au FileType python setl noexpandtab tabstop=4 shiftwidth=4

"filetype plugin on  " enables extended filetype detection via standards scripts and plugins
"filetype indent off " disables filetype indentation because it overrides global indent configuration

" Display tabs and trailing spaces visually
set list listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣
set showbreak=↪\

set wrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" =================== Mouse  ========================

" set mouse=a
" set ttymouse=urxvt

" =================== LateX  ========================

let g:tex_flavor = "latex"

" ============== Custom Filetypes ===================

au BufNewFile,BufRead *.xrc set filetype=xdefaults
au BufNewFile,BufRead *.nse set filetype=lua

" =================== Encoding ======================
"set encoding=utf-8
"set fileencodings=utf-8
"set fileencoding=utf-8

" =============== Vim-Airline =======================
" Always show statusline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'
"  Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" ============= Ale syntax checks ==============
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_linters = {
\	"python": ["flake8"],
\}
let g:ale_python_flake8_options="--ignore=W191,E501"
"let g:syntastic_check_on_wq = 0
"let g:syntastic_check_on_open = 1
"" Automatically show the error lists
"let g:syntastic_auto_loc_list=1
"let g:syntastic_disabled_filetypes=['html']
"" Disable tabs warning throwns by pylint
"let g:syntastic_python_checkers = ["pep8"]
"let g:syntastic_python_pep8_args="--ignore=W191,E501"
"" Enable the sign interface
"let g:syntastic_enable_signs=1
"" Change some symbols
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_style_error_symbol = "✗"
"let g:syntastic_warning_symbol = "⚠"
"let g:syntastic_style_warning_symbol = "⚠"
"let g:syntastic_always_populate_loc_list = 1

" =============== Gvim ===============================
" Hide toolbar and menubar
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar

" ================ Snippets
set rtp+=~/.vim/custom-snippets/

" ================ Markdown
let g:vim_markdown_fenced_languages = ['python=python']
set conceallevel=2

map <F12> o<C-R>=strftime("[%d %b %Y - %H:%M (%Z)] ")<CR>
imap <F12> <C-R>=strftime("[%d %b %Y - %H:%M (%Z)] ")<CR>
