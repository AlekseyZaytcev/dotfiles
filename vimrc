call plug#begin('~/.vim/plugged')

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'drewtempelmeyer/palenight.vim'

" Initialize plugin system
call plug#end()

" To use fzf in Vim, add the following line to your .vimrc:
set rtp+=/usr/local/opt/fzf

" General settings
"
set background=dark
colorscheme palenight
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
set noswapfile
set hlsearch
set number

" Plugin configs
"
let g:ale_sign_column_always = 1
let g:ale_linters = {
\   'ruby': ['rubocop'],
\   'javascript': ['eslint']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'javascript': ['prettier'],
\   'css': ['prettier']
\}
let g:ale_ruby_rubocop_executable = 'bundle'

" Mappings
"
let mapleader = ","

nmap <C-e> :Explore<CR>
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>
nmap <C-l> :Buffers<CR>
noremap <space> :let @/ = ""<CR> 
nmap gs :tab Gstatus<CR>
nmap <F10> :%bd<CR>:q<CR>
nmap ctb :!ctags --tag-relative=yes --extras=f -R .<CR>
nmap tn :tabnew<CR>
