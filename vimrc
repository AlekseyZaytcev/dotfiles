call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'vim-test/vim-test'
Plug 'francoiscabrol/ranger.vim'
" Plug 'sickill/vim-monokai'
Plug 'mhartington/oceanic-next'

" Initialize plugin system
call plug#end()

" To use fzf in Vim, add the following line to your .vimrc:
" set rtp+=/usr/local/opt/fzf

" General settings
"
set background=dark
" colorscheme monokai
set t_Co=256
colorscheme OceanicNext
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
set noswapfile
set hlsearch
set number
set mouse=a

" Plugin configs
"
" ALEfix
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

" VimTest
let test#strategy = "vimterminal"
let test#vim#term_position = "belowright"
let test#ruby#rspec#options = {
  \ 'nearest': '--backtrace',
  \ 'file':    '--format documentation',
  \ 'suite':   '--tag ~slow',
\}

" Mappings
"
let mapleader = ","

nmap <C-e> :Explore<CR>
nmap <C-p> :Files<CR>
nmap <C-f> :Rg<CR>
nmap <C-l> :Buffers<CR>
nmap <C-i> :ALEFix<CR>
noremap <space> :let @/ = ""<CR> 
nmap gs :tab Gstatus<CR>
nmap gb :Gblame<CR>
nmap <F10> :%bd<CR>:q<CR>
nmap ctb :!ctags --tag-relative=yes --extras=f -R .<CR>
nmap <C-k> :bd<CR>
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
