vnoremap < <gv
vnoremap > >gv
"
"In visual mode move a block of code keeping correct identation.
vnoremap J :m '>+2<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <C-A> ggVG<CR>
