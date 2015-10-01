" VUNDLE 

""" viMproved
set nocompatible

""" Required
filetype off

""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

""" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

call vundle#end()
filetype plugin indent on

" PLUGINS

""" Colorschemes
Plugin 'gregsexton/Muon'
Plugin 'gilgigilgil/anderson.vim'

""" Option toggling, extra shorthand commands
Plugin 'tpope/vim-unimpaired' 

""" Commenting 
Plugin 'scrooloose/nerdcommenter'

""" Directory tree viewer
Plugin 'scrooloose/nerdtree'

""" Custom statusline
Plugin 'bling/vim-airline'

""" Buffer list in statusline
Plugin 'bling/vim-bufferline'

""" Syntax checking
"Plugin 'scrooloose/syntastic'

""" Automatic tag closing (parens, angle brackets, quotes, et cetera)
Plugin 'Raimondi/delimitMate'

""" Lisp SWANK Client
Plugin 'kovisoft/slimv'

""" Surrounding tag tool
Plugin 'tpope/vim-surround'

" PLUGIN CONFIG

"" Airline
let g:airline_theme='raven'
autocmd VimEnter * AirlineToggleWhitespace

"" NERDTree
autocmd VimEnter * :NERDTree | wincmd p

"" Slimv
let g:slimv_impl = 'sbcl'
let g:slimv_repl_split=4
let g:slimv_swank_cmd = '!sh -c "sbcl --load /home/jking/.vim/bundle/slimv/slime/start-swank.lisp &"'

" GENERAL

""" Sets number of commands VIM remembers
set history=700

""" Allows external file changes to be auto read 
set autoread

""" Maps leader key to ','
let mapleader = ',' 

""" Faster saving
nmap <leader>w :w!<cr>

" Faster reloading/editing of vimrc
nmap <silent> <leader>sv :so $MYVIMRC<cr>
nmap <silent> <leader>ev :e $HOME/dotfiles/.vimrc<cr>

" USER INTERFACE

""" Allows syntax highlighting
syntax on

""" Sets wildmenu on for tab completion
set wildmenu

""" Sets ruler in statusline
set ruler

""" When list is on, set end of line char to ¬
set lcs=eol:¬

""" Current line number shown with surrounding relative numbers
set number
set relativenumber

""" 256 color
set t_Co=256

""" Set colorscheme the following
colorscheme anderson

" TEXT RELATED

""" Sets tab and inserted tab to two spaces
set tabstop=2
set shiftwidth=2
set expandtab
  
""" Makes indents follow depth and whitespace chars of previous lines
set autoindent
set copyindent

""" Set word wrapping and only explicit line breaks
set wrap

""" Sets toggle key for paste mode in insert mode (removing 'smart' settings on pasting), useful for inserting much text
set pastetoggle=<leader>p

" SEARCHING

""" Ignores case when searching
set ignorecase

""" If search is all lowercase, ignore case, otherwise, search with case
set smartcase

""" Highlight search matches
set hlsearch

""" Show search matches while typing
set incsearch

""" No highlight search after completed
nnoremap <silent><CR> :let @/ = ""<CR>:call clearmatches()<CR>

" FILES, UNDOS, AND BACKUPS

""" Sets undo history
set undolevels=1000

""" Prevents vim backups, use git instead
set nobackup
set noswapfile

" WINDOWS, BUFFERS, AND TABS

""" Sets buffers to hidden and not inactive state
set hidden

""" Useful tab commands
map <leader>th :tabprevious<CR>
map <leader>tl :tabnext<CR>
map <silent><leader>tm :<C-U>exe "tabmove " . (v:count)<CR> 
map <leader>tn :tabnew<CR>
map <leader>tc :tabclose<CR>
map <leader>to :tabonly<CR>

" EXTRA MAPPINGS/REMAPPINGS

""" Go to shell after saving
nmap <leader>wsh :w<CR>:sh<CR>

""" Autocenter and consider wrapped lines as seperate ones when moving up and down
nnoremap j gj
nnoremap k gk

""" Sets the 0 command to go to the first non-blank character instead of first char on line
nmap 0 ^

""" Toggle NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>
