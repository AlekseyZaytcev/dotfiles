call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'arcticicestudio/nord-vim'

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

" Mappings
nmap <C-e> :Explore<CR>
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>
