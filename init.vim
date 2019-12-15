call plug#begin('~/.vim/plugged')

" General settings {{{
    set autoread " detect when a file is changed
    set textwidth=120
    set clipboard=unnamed
    set mouse=a

    " Searching
    set ignorecase " case insensitive searching
    set smartcase " case-sensitive if expresson contains a capital letter
  " }}}

  " Appearance {{{
    set number " show line numbers
    set wrap " turn on line wrapping
    set wrapmargin=8 " wrap lines when coming within n characters from side
    set linebreak " set soft wrapping
    set showbreak=… " show ellipsis at breaking
    set wildmenu " enhanced command line completion
    set wildmode=list:longest " complete files like a shell
    set cmdheight=1 " command bar height

    " Tab control
    set expandtab
    set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
    set tabstop=2 " the visible width of tabs
    set softtabstop=2 " edit as if the tabs are 4 characters wide
    set shiftwidth=2 " number of spaces to use for indent and unindent
    set shiftround " round indent to a multiple of 'shiftwidth'

    " code folding settings
    set foldmethod=syntax " fold based on indent
    set foldlevelstart=99
    set foldnestmax=10 " deepest fold is 10 levels
    set nofoldenable " don't fold by default
    set foldlevel=1

    " toggle invisible characters
    set list
    set listchars=trail:⋅
    set showbreak=↪

    " Load colorschemes
    Plug 'joshdick/onedark.vim'

    " LightLine {{{
        Plug 'itchyny/lightline.vim'
        Plug 'daviesjamie/vim-base16-lightline'
    " }}}
" }}}

" General Mappings {{{
    " set a map leader for more key combos
    let mapleader = ','

    " edit ~/.config/nvim/init.vim
    map <leader>ev :e ~/.config/nvim/init.vim<cr>
    " edit gitconfig
    map <leader>eg :e ~/.gitconfig<cr>

    " clear highlighted search
    noremap <space> :set hlsearch! hlsearch?<cr>
" }}}

" General Functionality {{{
    " Vim integration with tmux
    Plug 'benmills/vimux'

    " add end, endif, etc. automatically
    Plug 'tpope/vim-endwise'

    " NERDTree {{{
        Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'ryanoasis/vim-devicons'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
        let NERDTreeDirArrowCollapsible = '﬌'

        nmap <silent> <leader>n :NERDTreeToggle<cr>
        " find the current file in nerdtree without needing to reload the drawer
        nmap <silent> <leader>y :NERDTreeFind<cr>
    " }}}

    " vim-fugitive {{{
        Plug 'tpope/vim-fugitive'
        nmap <silent> <leader>gs :Gstatus<cr>
        nmap <leader>ge :Gedit<cr>
        nmap <silent><leader>gr :Gread<cr>
        nmap <silent><leader>gb :Gblame<cr>
        Plug 'sodapopcan/vim-twiggy'
    " }}}

    " Neerdcommenter {{{
        Plug 'scrooloose/nerdcommenter'
    " Add spaces after comment delimiters by default
        let g:NERDSpaceDelims = 1
        let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
        let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation
        let g:NERDCommentEmptyLines = 1 " Allow commenting and inverting empty lines (useful when commenting a region)
        let g:NERDTrimTrailingWhitespace = 1 " Enable trimming of trailing whitespace when uncommenting
        let g:NERDToggleCheckAllLines = 1 " Enable NERDCommenterToggle to check all selected lines is commented or not 
    " }}}
" }}}

call plug#end()

" Final setup {{{
    " This call must happen after the plug#end() call to ensure
    " that the colorschemes have been loaded
    syntax on
    colorscheme onedark
    let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

" }}}
