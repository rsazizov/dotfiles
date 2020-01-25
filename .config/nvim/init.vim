syntax on

filetype indent plugin on

set termguicolors
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2

nnoremap <C-P> :call LanguageClient#textDocument_documentSymbol()

let mapleader = ' '
let g:netrw_banner = 0

nnoremap <leader> :nohl<CR><C-L>
nnoremap <leader>r :!love .<CR><CR>

inoremap jk <Esc>

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

Plug 'scrooloose/nerdtree'

Plug 'mattn/emmet-vim'

Plug 'junegunn/goyo.vim'

Plug 'Shougo/deoplete.nvim'

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }

let g:LanguageClient_serverCommands = {
  \ 'python': ['~/.local/bin/pyls'],
  \ 'cpp': ['clangd']
  \ }

nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

Plug 'gruvbox-community/gruvbox'

call plug#end()

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif

nnoremap <leader>f :NERDTreeToggle<Enter>

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

let LanguageClient_diagnosticsEnable = 0

colorscheme gruvbox

let g:deoplete#enable_at_startup = 1

" Set airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

