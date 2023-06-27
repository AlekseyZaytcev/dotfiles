call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'github/copilot.vim'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-commentary'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tomasr/molokai'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'lukas-reineke/indent-blankline.nvim'
call plug#end()

set softtabstop=2
set shiftwidth=2
set noexpandtab
set number
set clipboard+=unnamedplus

let g:molokai_original = 1
colorscheme molokai

au TextYankPost * silent! lua vim.highlight.on_yank()

let test#strategy = "neovim"

lua << EOF
require('gitsigns').setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "vim", "vimdoc", "javascript", "typescript", "ruby" },
}

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
}
EOF

nmap <C-f> :Ag<CR>
nmap <C-p> :Files<CR>
nmap <C-b> :Buffers<CR>
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>
