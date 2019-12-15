call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
call plug#end()

" General settings
syntax on                         " show syntax highlighting
filetype plugin indent on
set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2
set termguicolors                 " show me all the colors please
set expandtab                     " use spaces, not tab characters
set nocompatible                  " We're running Vim, not Vi!
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set autoread 			                " detect when a file is changed
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set mouse=a
set incsearch                     " show search results as I type
set timeoutlen=500                " decrease timeout for 'jk' mapping
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]

" setup color scheme
set background=dark
colorscheme base16-railscasts

" FZF
nmap <C-p> :Files<CR>
nmap <C-l> :Buffers<CR>
nmap <C-f> :Ag<CR>

" Git Plugins
nmap gs :tab Gstatus<CR>
nmap glo :Glog<CR>
nmap gco :Git checkout<space>
nmap gb :Gblame<CR>
nmap gfh ::Glog -- %<CR>

" Ale Linters
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


" Vim Test
let test#strategy = "neovim"
let test#ruby#rspec#executable = 'bundle exec rspec'
let g:test#preserve_screen = 1

nmap <silent> <leader>t :TestFile<cr>
nmap <silent> <leader>T :TestNearest<cr>

" General Mappings

" set leader key to comma
let mapleader = ","

" clear highlighted search
noremap <space> :let @/ = ""<CR>
nmap <F2> :let @+=expand("%")<CR>
nmap <F7> :bd<CR>
nmap a<F7> :%bd<CR>
nmap <F9> :%bd<CR>:q<CR>
nmap <C-e> :Explore<CR>

" build universal ctags
nmap ctb :!ctags --tag-relative=yes --extras=f -R .<CR>

