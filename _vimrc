syntax enable
set nu
set cursorline
set ai
set smartindent
" nombre de colonnes pour représenter une tabulation, nombre d'espaces d'une
" tabulation, nombre d'espaces d'une indentation, ne pas remplacer les
" tabulations par des espaces
set ts=4 sts=4 sw=4 noexpandtab
" detection du type de fichier et indentation adequate (touche =)
filetype on
filetype plugin on
filetype indent on
" permet de quiter un buffer modifié sans alerte (avec :bn ou :bp)
" on a toujours l'alerte si on quitte vim
set hidden
" theme de couleur
set t_Co=256
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized
" recherche avec surbrillance
set incsearch
set showmatch
set hlsearch

" indent javascript
filetype plugin indent on

" remap <ESC>
inoremap jk <ESC>
" leader key
let mapleader = ","

" modeline
set modeline
