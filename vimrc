
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set smartindent

set foldmethod=indent

set nowrap
set wildmenu
set nohlsearch

hi Folded ctermbg=None
hi Folded guibg=#A0A0A0

" NERDTree stuff
map <F12> :NERDTreeToggle<CR>

" Unite
let g:unite_source_history_yank_enable = 1
"nnoremap <C-p> :Unite -quick-match history/yank buffer file<cr>
nnoremap <C-p> :Unite history/yank buffer file<cr>

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
