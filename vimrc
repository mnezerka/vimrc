
set t_Co=256

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
syntax on

" Spilt diff windows vertically
set diffopt+=vertical

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

color blueboy


" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Tagbar for go language 
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

autocmd FileType go call SetGoOptions()
function! SetGoOptions()
"setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab makeprg=php-xdebug\ %
    :call tagbar#autoopen(0)
endfunction
