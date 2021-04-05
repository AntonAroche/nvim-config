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
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'nvim-lua/completion-nvim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme gruvbox
set background=dark
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require("modules")

let g:netrw_winsize = 25
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let mapleader = " "

nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>pl <cmd>Telescope live_grep<CR>
nnoremap <leader>pg <cmd>Telescope git_files<CR>
nnoremap <C-p> :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>

fun! TrimWhiteSpace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MainGroup
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpace()
augroup END
