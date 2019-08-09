" Pathogen
call pathogen#infect()
call pathogen#helptags()

set encoding=UTF-8
set nocompatible
set backspace=2
let g:airline_powerline_fonts=1

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
filetype plugin indent on

Plugin 'scrooloose/nerdtree.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rhysd/vim-clang-format'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline'
" Color Schemes
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'Xuyuanp/nerdtree-git-plugin'

set number
let g:WebDevIconsUnicodeDecorateFolderNodes=1

" Gruvbox settings
colorscheme gruvbox
set background=dark
set t_CO=256
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

set nofoldenable
au FileType * setlocal comments-=:// comments+=f://
set tabpagemax=100

" Tabs
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

" Syntax Highlighting and indents
syntax on
filetype indent on
filetype plugin on
set ai
set si
set nu

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
au VimEnter *  NERDTree

"Tab Completeion
set wildmenu
set wildmode=list:longest
set wildignore+=*.pyc,__pycache__,node_modules,venv,build,*.class,.idea/

"Key Binds
" TODO

" Copy/Pasting
function! ToggleMouse()
    if &mouse == 'a'
        set mouse=r
        set nonu
    else
        set mouse=a
        set nu
    endif
endfunction
nnoremap <leader>m :call ToggleMouse()<CR>

" Commenting blocks of code.
" https://stackoverflow.com/a/1676672
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Changing Cursor insert mode
set guicursor=i:ver25-iCursor

" Latex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
