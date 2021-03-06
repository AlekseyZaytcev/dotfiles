call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-commentary'

" Initialize plugin system
call plug#end()

" To use fzf in Vim, add the following line to your .vimrc:
set rtp+=/usr/local/opt/fzf

" General settings
colorscheme nord
set mouse=a
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
set noswapfile
set hlsearch

" Mappings
let mapleader = ","

nmap <C-e> :Explore<CR>
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>
noremap <space> :let @/ = ""<CR> 
nmap gs :tab Gstatus<CR>
