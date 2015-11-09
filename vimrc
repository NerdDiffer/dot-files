set nocompatible " be iMproved, required. ensure vim, not vi
syntax on

" DRY up the arguments to various calls to `source` in this file
let s:source_file_directory = '$HOME/.dot-files/vim/'
for fpath in split(globpath(s:source_file_directory, '*.vim'), '\n')
  exe 'source' fpath
endfor

" ------- Bundle options -------
" `syntastic`: lint the file on open, as well as save (lint on save is default)
let g:syntastic_check_on_open=1

" `vim-less`: mapping .less to .css, lessc is required
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" `YouCompleteMe`: no popups & splits when presented with options
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview

" ------- Autocmd, Filetype -------
" Language-specific settings should load automatically as long as they are in
" the `.vim/ftplugin/` directory. If not, then try putting all of them in the
" following file: `$HOME/.dot-files/vim/autocmd.vim`

" Use eslint as syntax checker when working with a .jsx file.
" TODO: I'd like to be able to load this in './vim/ftplugin/javascript.vim', but
" am not having much success. Putting it here works, though it is kind of a
" duct tape solution.
autocmd Filetype javascript.jsx let b:syntastic_checkers = ['eslint']

" ------- General configuration -------
set expandtab    " inserts a space whenever tab is pressed
set laststatus=2 " make the last window always have a status line
set shiftwidth=2 " num of space characters for indentation
set tabstop=2    " num of spaces inserted when tab is pressed
set textwidth=80 " max 80 characters before an automatic line break
