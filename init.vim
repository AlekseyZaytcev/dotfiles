call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-commentary'
Plug 'lewis6991/gitsigns.nvim'
Plug 'projekt0n/github-nvim-theme'
call plug#end()

set softtabstop=2
set shiftwidth=2
set noexpandtab
set number
set clipboard+=unnamedplus
colorscheme github_dark_dimmed
au TextYankPost * silent! lua vim.highlight.on_yank()

let test#strategy = "neovim"

lua << EOF
require('gitsigns').setup()
EOF

nmap <C-f> :Ag<CR>
nmap <C-p> :Files<CR>
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
