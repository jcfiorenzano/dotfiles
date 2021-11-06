source $HOME/AppData/Local/nvim/vim-plug/plugins.vim
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
set undodir=~/.config/nvim/undodir
set incsearch
set colorcolumn=160
set clipboard=unnamed
set relativenumber 
set list "" Show whitespace characters
set listchars+=space:.
set ignorecase "" Search is not case sensitive

colorscheme gruvbox

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_banner = 0 
let g:netrw_browse_split = 1
let g:netrw_altv = 1
let g:netrw_liststyle = 4

nnoremap <C-A> ggVG <CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 60<CR>
nnoremap <leader>ps :Rg<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

"------------NERDTree------------------
nnoremap <leader>t :NERDTreeFocus<CR>
nnoremap <leader>T :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
"---------------------------------------
nmap <leader>gd <Plug>(coc-definition)
nnoremap <leader>h :wincmd h<CR>
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

let g:coc_global_extensions=[
            \'coc-snippets',
            \'coc-pairs',
            \'coc-tsserver',
            \'coc-eslint',
            \'coc-prettier',
            \'coc-json',
            \]
