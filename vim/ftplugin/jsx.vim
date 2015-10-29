" When working with React or .jsx files...
autocmd BufNewFile,BufReadPost *.jsx let t:syntastic_javascript_checkers = ['eslint']

" Quick reference for variable scopes:
" let g:variable - global
" let b:variable - buffer
" let w:variable - window
" let t:variable - tab
" let s:variable - script-local
" let l:variable - local function
" let v:variable - vim variables
