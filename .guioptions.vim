" Color Scheme
colo pencil
let g:airline_theme = 'pencil'
set background=dark
let g:airline_powerline_fonts = 1

" keep 3 screen lines above and below cursor
set scrolloff=3 
" show what mode you are in at the bottom
set showmode    
" show command at the bottom
set showcmd     
" flash instead of beep
set visualbell  
" highlight screen line with cursor
set cursorline 
" show cursor coordinates at bottom right
set ruler       
" always show status line for last window
set laststatus=2   
" show line number relative to cursor in insert mode
set nu
au InsertEnter set relativenumber  
au InsertLeave set norelativenumber

"==GUI ONLY==
 set guifont=Hermit:h12:cANSI:qDRAFT
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor+=i:hor5-iCursor

" Eliminate toolbars and scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

nnoremap <C-F1>  :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2>  :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3>  :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

