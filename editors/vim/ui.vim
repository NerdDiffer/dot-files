" ------- UI configuration -------

set t_Co=256          " enable 256 colors
set number            " line numbers
set background=dark
colorscheme SlateDark

" Highlight trailing whitespace with ... in black background.
" Lines taken from: `https://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc`
set list listchars=trail:.,tab:>.
highlight SpecialKey ctermfg=Black ctermbg=White

set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey
