" ------- Autocmd & filetype stuff -------

" make Vim treat any .md file as Markdown instead of Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" limit the length of git commit message bodies to 72 characters
autocmd FileType gitcommit setlocal tw=72
