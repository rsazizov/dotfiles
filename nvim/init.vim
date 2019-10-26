syntax on
filetype indent plugin on

nnoremap <C-/> :NERDCommenter
nnoremap <C-B> :Vex<CR>
nnoremap <C-P> :call LanguageClient#textDocument_documentSymbol()
 
let mapleader = ' '
let g:netrw_banner = 0

nnoremap <leader> :nohl<CR><C-L>
nnoremap <leader>r :!love .<CR><CR>

inoremap jk <Esc>

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' 

Plug 'tpope/vim-endwise'
Plug 'PotatoesMaster/i3-vim-syntax'

Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'

Plug 'junegunn/goyo.vim'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }

let g:LanguageClient_serverCommands = {
  \ 'python': ['~/.local/bin/pyls']
  \ }

nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

"Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

"Lua setup
Plug 'xolox/vim-misc'
Plug 'xolox/vim-lua-ftplugin'
Plug 'tbastos/vim-lua'

call plug#end()

let g:lua_check_syntax = 0
let g:lua_complete_omni = 1
let g:lua_complete_dynamic = 1
let g:lua_define_completion_mappings = 0

call deoplete#custom#var('omni', 'functions', {
\ 'lua': 'xolox#lua#omnifunc',
\ })

let g:deoplete#enable_at_startup = 1

" Set airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

