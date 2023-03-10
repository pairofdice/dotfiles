syntax enable
filetype plugin indent on
autocmd BufNewFile,BufRead *.rs set filetype=rust
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
	Plug 'chrisbra/csv.vim'
	Plug 'moll/vim-bbye'
	Plug 'simeji/winresizer'
	Plug 'rust-lang/rust.vim'
	Plug 'dense-analysis/ale'
	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'ncm2/float-preview.nvim'
call plug#end()

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
" Is enabled by default in nvim but ...
set hidden

nnoremap <space> <nop>
let mapleader = "\<space>"

" moll/vim-bbye delete buffer without deleting window
nnoremap <leader>Bd :Bdelete<cr>
nnoremap <leader>fm :RustFmt<cr>
let g:rustfmt_autosave = 1
" :help rustfmt

augroup filetype_csv
	autocmd!

	autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
	autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END
"
let g:ale_linters = { 'rust': ['analyzer'], }
" set completeopt=menu,menuone,noselect,noinsert
" set completeopt=menu,menuone,preview,noselect,noinsert
set completeopt-=preview
let g:float_preview#docked = 1
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

colorscheme gruvbox

