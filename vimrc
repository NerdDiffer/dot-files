set nocompatible " be iMproved, required. ensure vim, not vi
filetype off     " required

" set the runtime path to include Vundle and initialize it
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ...
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

" To ignore plugin indent changes, instead use:
"filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ

Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides' " more indenting help
Plugin 'godlygeek/tabular'
Plugin 'Raimondi/delimitMate'         " auto-add closing quotes, brackets, etc
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'      " helps w/ indenting
Plugin 'briancollins/vim-jst'         " jst/ejs syntax
Plugin 'mxw/vim-jsx'                  " jsx (ReactJS)
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line:
" comment out `call vundle#end()` when also commenting out `call vundle#begin()`
call vundle#end() " required
filetype plugin indent on " required

" lint the file on open, as well as save (lint on save is default)
let g:syntastic_check_on_open=1

let g:indent_guides_size = 1
" make Vim treat any .md file as Markdown instead of Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
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
let g:jsx_ext_required = 0 " allow jsx in regular `.js` files
let g:syntastic_javascript_checkers = ['eslint'] " use eslint 

" Put your stuff after this line
set t_Co=256     " enable 256 colors
set number       " line numbers
set expandtab    " inserts a space whenever tab is pressed
set laststatus=2
set shiftwidth=2 " num of space characters for indentation
set tabstop=2    " num of spaces inserted when tab is pressed
set textwidth=80 " max 80 characters before an automatic line break

map <F2> :Explore
map <F6> :tabmove 
map <F7> :tabp<Enter>
map <F8> :tabn<Enter>

set background=dark
colorscheme SlateDark

" syntax on
syntax enable

" allow angular directives (https://github.com/scrooloose/syntastic/issues/612)
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
