filetype plugin indent on
syntax enable

colorscheme ryuuko

set autoindent
set smarttab
set expandtab

set hidden 

set ttimeout
set ttimeoutlen=100

set background=dark

set number
set relativenumber

set incsearch
set hlsearch
set smartcase
" <C-L> to clear highlighted search (From tpope's vim-sensible)
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set laststatus=2
set ruler
set wildmenu

set autoread

set history=1000

set t_Co=256

set nobackup
set noswapfile

set shell=/bin/zsh
