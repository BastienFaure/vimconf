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

"Python pep8 & pyflakes
"Plugin 'nvie/vim-flake8'

"Plugin 'scrooloose/syntastic'

"Plugin 'tpope/vim-surround'

"Snipmate
Plugin 'msanders/snipmate.vim'

"SaltStack
Plugin 'saltstack/salt-vim'

"Theme Monokai
Plugin 'sickill/vim-monokai'
