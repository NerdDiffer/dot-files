set nocompatible " be iMproved, required. ensure vim, not vi

" ------- Bundles -------
source ./vim/vundles.vim

" ------- Bundle options -------
" lint the file on open, as well as save (lint on save is default)
let g:syntastic_check_on_open=1

let g:indent_guides_size = 1
" disable automatic folding in markdown files:
" let g:vim_markdown_folding_disabled=1
" automatically close javascript function curly-braces with { }
" maps Ctrl+c (while in insert mode) to a line-split
" imap <C-c> <CR><Esc>0

" Mapping .less to .css, lessc is required
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

" optional tweaks for YouCompleteMe (cleans up default popups & splits)
let g:ycm_add_preview_to_completeopt=0
set completeopt-=preview

" When working with ES2015/ES6 or React, uncomment the following 2 lines:
" let g:jsx_ext_required = 0 " allow jsx in regular `.js` files
" let g:syntastic_javascript_checkers = ['eslint'] " use eslint

" ------- Autocmd, Filetype -------
" Language-specific settings should load automatically as long as they are in
" the `.vim/ftplugin/` directory. If not, then try putting all of them in the
" following file:
" source ./vim/autocmd.vim

" ------- General configuration -------
set t_Co=256     " enable 256 colors
set number       " line numbers
set expandtab    " inserts a space whenever tab is pressed
set laststatus=2 " make the last window always have a status line
set shiftwidth=2 " num of space characters for indentation
set tabstop=2    " num of spaces inserted when tab is pressed
set textwidth=80 " max 80 characters before an automatic line break

" ------- Syntax highlighting -------
syntax on

" ------- Looks -------
source ./vim/ui.vim

" ------- Mappings -------
source ./vim/mappings.vim
