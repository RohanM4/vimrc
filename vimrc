" Pathogen
call pathogen#infect()
call pathogen#helptags()

set encoding=utf-8
set nocompatible
set backspace=2

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

call vundle#begin()
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
call vundle#end()

Plugin 'scrooloose/nerdtree.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rhysd/vim-clang-format'
Plugin 'lervag/vimtex'
" Color Schemes
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'

filetype plugin indent on
syntax on
set number

" Gruvbox settings
colorscheme gruvbox
set background=dark
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

set nofoldenable

set tabpagemax=100

" Tabs
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab


" Tab Remaps
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>


"Search options
set incsearch
set ignorecase
set smartcase

" Stuff to make things less annoying
set noerrorbells
if has('autocdm')
	autocmd GUIEnter * set vb t_vb=
endif
set mouse=a
set scrolloff=5
