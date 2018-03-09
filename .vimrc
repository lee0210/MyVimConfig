set number
set shiftwidth=4
set incsearch

let mapleader = "\'"
let maplocalleader = "\'"
nnoremap <leader>w viw
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>( F(lvf)h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python iabbrev <buffer> iff if:<left>
    autocmd FileType python nnoremap <buffer> <localleader>run :!python %<cr>
augroup END
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>t F<vf>
augroup END

set laststatus=2

set statusline=%y%F
set statusline+=%=
set statusline+=Col:%4c

nnoremap <leader>n :tabn<cr>
nnoremap <leader>m :tabp<cr>
nnoremap <leader>gm '
nnoremap ' <nop>
inoremap <tab> <esc>
nnoremap <tab> <esc>
vnoremap <tab> <esc>
