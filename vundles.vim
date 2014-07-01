" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Markdown highlighting plugin
Bundle 'tpope/vim-markdown'
" Some hacks to enable syntax colorlation for .md files
au BufRead,BufNewFile *.md set filetype=markdown

" Nerdtree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" Swiss knife for web devs Bundle '2072/PHP-Indenting-for-VIm'

" Latex Box
Bundle 'LaTeX-Box-Team/LaTeX-Box'

" Vim-airline
Bundle 'bling/vim-airline'

"Python pep8 & pyflakes
"Bundle 'nvie/vim-flake8'

"Bundle 'scrooloose/syntastic'

"Bundle 'tpope/vim-surround'

"Snipmate
Bundle 'msanders/snipmate.vim'

"SaltStack
Bundle 'saltstack/salt-vim'
