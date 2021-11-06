call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf' , {'do':{ ->fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'OmniSharp/omnisharp-vim'
Plug 'yegappan/taglist'
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
