let mapleader = ',' 

nnoremap <silent> <leader>sv :source $MYVIMRC<CR>
nnoremap <silent> <leader>ev :edit $MYVIMRC<CR>

nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
" Put text on a line, then make it a heading that's stunning and unique
nnoremap <leader>C 10I=<ESC>a <ESC>A <ESC>60A=<ESC>60<Bar>lD

nnoremap j gj
nnoremap k gk
