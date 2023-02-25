set clipboard+=unnamedplus
" no swap file
set noswapfile
" save undo-tree in files
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000
set nu rnu
" copy indent from current line when starting a new line
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

" esc in insert & visual mode
inoremap kj <esc>
vnoremap kj <esc>

set timeoutlen=500

nnoremap H gT
nnoremap L gt
