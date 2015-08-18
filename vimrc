
set t_Co=256

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
  
" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

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
set number

" Instead of failing a command because of unsaved changes, instead raise a
" " dialogue asking if you wish to save changed files.
set confirm

syntax on

" Spilt diff windows vertically
set diffopt+=vertical

" NERDTree stuff
map <F12> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40

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

" automatically open quick fix window after make
autocmd QuickFixCmdPost * nested cwindow | redraw!

" recompile coffe scipt after write
"autocmd BufWritePost *.coffee silent make!

" buffergator stuff
let g:buffergator_vsplit_size = 60
let g:buffergator_split_size = 8
let g:buffergator_autodismiss_on_select = 0
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_display_regime = "basename"
let g:buffergator_show_full_directory_path = 0
let g:buffergator_autoupdate = 1


" Show syntax highlighting group under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
