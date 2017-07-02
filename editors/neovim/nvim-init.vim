" source this file from Neovim's config file.
" Typically, it can be found at: `$HOME/.config/nvim/init.vim`

source $HOME/git/dot-files/editors/vim/vimrc

" Just a couple of other UI settings. Otherwise, just use regular vim config...
set ruler      " show column & line numer in status bar
set nohlsearch " do NOT highlight search matches
set mouse=     " disable mouse

let g:python2_host_prog= '/usr/bin/python2'
let g:ycm_server_python_interpreter= '/usr/bin/python2'
