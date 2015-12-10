" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" Markdown highlighting plugin
Plugin 'tpope/vim-markdown'
" Some hacks to enable syntax colorlation for .md files
au BufRead,BufNewFile *.md set filetype=markdown

" Nerdtree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" Latex Box
Plugin 'LaTeX-Box-Team/LaTeX-Box'

" Vim-airline
Plugin 'bling/vim-airline'

" Git integration
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'

" Python plugins
Plugin 'jmcantrell/vim-virtualenv'
"Python pep8 & pyflakes1
"Plugin 'nvie/vim-flake8'

" Syntaxe
Plugin 'scrooloose/syntastic'

"Snipmate
Plugin 'msanders/snipmate.vim'

"SaltStack
Plugin 'saltstack/salt-vim'

" Additionnal themes
Plugin 'sickill/vim-monokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'jnurmine/Zenburn'

" Conque-Shell
Plugin 'vim-scripts/Conque-Shell'
