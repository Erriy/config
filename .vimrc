syntax on
set nu
set rnu
set hlsearch
set showmode
set cursorline
"set cursorcolumn
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=darkred guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=darkred guibg=NONE guifg=NONE

let g:Lf_ShortcutF = '<C-P>'
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
nmap <silent> <C-T> :LeaderfTag<CR>
nmap <silent> <C-R> :LeaderfBufTag<CR>

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

