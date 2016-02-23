" {{{ Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'

Bundle 'chase/vim-ansible-yaml'
" }}}

" {{{ airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#fnamemod = ':t:.'
" }}}

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
let mapleader = " "

" modeline
set modeline
" tabs
set expandtab
set tabstop=2
set shiftwidth=2

" {{{ Shortcuts
" clear search
nnoremap <silent> <buffer> <leader>l :nohl<cr>
" }}}

" {{{ Vundle
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}

