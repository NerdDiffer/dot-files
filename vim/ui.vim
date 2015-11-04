" ------- UI configuration -------

set t_Co=256          " enable 256 colors
set number            " line numbers
set background=dark
colorscheme SlateDark

" Highlight trailing whitespace with ... in black background.
" Lines taken from: `https://github.com/rtomayko/dotfiles/blob/rtomayko/.vimrc`
set list listchars=trail:.,tab:>.
highlight SpecialKey ctermfg=White ctermbg=Black