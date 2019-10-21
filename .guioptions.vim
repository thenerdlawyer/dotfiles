" Eliminate toolbars and scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

nnoremap <C-F1>  :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2>  :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3>  :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

" Color Scheme

colo slate
set background=dark
set guifont=Hermit:h12:cANSI:qDRAFT

" Configure cursor
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor+=i:hor5-iCursor

set scrolloff=3 " keep 3 screen lines above and below cursor
set showmode    " show what mode you are in at the bottom
set showcmd     " show command at the bottom
set visualbell  " flash instead of beep
set cursorline  " highlight screen line with cursor
set ruler       " show cursor coordinates at bottom right
set laststatus=2    " always show status line for last window
set relativenumber  " show line number relative to cursor
