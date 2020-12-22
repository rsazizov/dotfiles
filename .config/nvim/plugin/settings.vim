if filereadable('/usr/local/bin/python3')
  " Avoid search, speeding up start-up.
  let g:python3_host_prog='/usr/local/bin/python3'
endif

set nocompatible
set expandtab
set termguicolors
set shiftwidth=2
set tabstop=2
set softtabstop=2
set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set cmdheight=1
set number
set relativenumber
set background=dark
set splitbelow
set splitright
set guicursor=
set colorcolumn=80

" For airline
set noshowmode

set scrolloff=4
set shiftround

set wildignore+=*.o,*.class,*.pyc

" prevent vim from creating backup files all over the place.
set backupdir=/tmp

colorscheme ayu

filetype plugin indent on
syntax enable
hi Normal guibg=NONE ctermbg=NONE
