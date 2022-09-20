call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-rails'
Plug 'tomasr/molokai'
Plug 'vim-test/vim-test'
call plug#end()

let mapleader = ","
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set mouse=a
set clipboard+=unnamedplus
set number
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

noremap <space> :let @/ = ""<CR>
nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap <C-f> :Ag<CR>
nmap cp :let @+=@%<CR>
