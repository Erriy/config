syntax on
set nu
set rnu
set hlsearch
set showmode
set cursorline
set cursorcolumn
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set nomodeline

highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=darkred guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=darkred guibg=NONE guifg=NONE

let g:Lf_ShortcutF = '<C-P>'
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
nmap <silent> <C-T> :LeaderfTag<CR>
nmap <silent> <C-Y> :LeaderfBufTag<CR>
