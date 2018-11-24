syntax on
set nu
set rnu
set hlsearch
set showmode
set cursorline
"set cursorcolumn

highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=darkred guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=darkred guibg=NONE guifg=NONE

" NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif


" tagbar配置
nmap <silent> <F3> :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_left = 0
let g:tagbar_width = 50
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0

