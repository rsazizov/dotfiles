set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim
let mapleader = ' '

if dein#load_state('~/.local/share.dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif


	" Install plugins
	" UI for dein (vimplug-ish)
	call dein#add('wsdjeg/dein-ui.vim')

	call dein#add('neovim/nvim-lspconfig')
	call dein#add('nvim-lua/completion-nvim')

	call dein#add('tpope/vim-surround')
	call dein#add('tpope/end-wise')
	call dein#add('tpope/vim-eunuch')
	call dein#add('tpope/vim-commentary')

	call dein#add('scrooloose/nerdtree')
	call dein#add('ayu-theme/ayu-vim')

  call dein#end()
  call dein#save_state()
endif
