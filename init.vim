syntax on
set noerrorbells
set splitright
set splitbelow
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set smartindent
set hidden
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set updatetime=50
set splitright
set splitbelow

call plug#begin('~/.vim/plugged')
"Aesthetic
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
" Searching
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'jremmen/vim-ripgrep'
" Formatting
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'leafgarland/typescript-vim'
Plug 'jelera/vim-javascript-syntax'
" Fucntionality
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
call plug#end()

highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme gruvbox
set background=dark

lua require("modules")
let mapleader = " "

noremap <leader>go Go
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
nnoremap <leader>u :UndotreeToggle<CR>

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup fmt
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
    autocmd BufWritePre *.js,*.ts :Prettier
augroup END
