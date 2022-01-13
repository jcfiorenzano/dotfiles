source ~/.config/nvim/vim-plug/plugins.vim
syntax on

set noerrorbells
set autoindent
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
nmap <C-F> :Rg
"----------Windows-------------------------------
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 60<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
"-------------TabNavigation-------------

nnoremap <leader>1 :tabn 1 <CR>
nnoremap <leader>2 :tabn 2 <CR>
nnoremap <leader>3 :tabn 3 <CR>
nnoremap <leader>4 :tabn 4 <CR>
nnoremap <leader>5 :tabn 5 <CR>
nnoremap <leader>tn :tabnew <CR>
nnoremap <leader>tj :tabn <CR>
nnoremap <leader>tk :tabp <CR>
nnoremap <silent> <leader>x :tabclose<CR>

""------------NERDTree------------------
nnoremap <leader>oe :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
"---------------------------------------

"----------------COC-Definition----------
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <S-F12> <Plug>(coc-diagnostics-next)
nmap <silent> <S-F11> <Plug>(coc-diagnostics-prev)
let g:coc_global_extensions=[
            \'coc-snippets',
            \'coc-pairs',
            \'coc-tsserver',
            \'coc-eslint',
            \'coc-prettier',
            \'coc-json',
            \]
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbold and references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"--------------------------------------
"----------Telescope------------------
nmap <leader>ff :Telescope find_files<CR>
nmap <leader>fg :Telescope git_files<CR>
nmap <leader>fb :Telescope buffers<CR>
nmap <leader>fh :Telescope help_tags<CR>
"-------------------------------------
"-----------Tests---------------------
nmap <silent><leader>tt :TestNearest<CR>
nmap <silent><leader>tf :TestFile<CR>
nmap <silent><leader>ta :TestSuite<CR>
nmap <silent><leader>tl :TestLast<CR>
nmap <silent><leader>tv :TestVisit<CR>
let test#strategy = 'neovim'
let test#neovim#term_position = "vert botright 100"
"-------------------------------------
"-----------Terminal-----------------
tnoremap <Esc> <C-\><C-n>
