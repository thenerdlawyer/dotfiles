" Color Scheme
colo solarized
set background=dark

" keep 3 screen lines above and below cursor
set scrolloff=3
" show what mode you are in at the bottom
set showmode
" show command at the bottom
set showcmd
" flash instead of beep
set visualbell
" highlight screen line with cursor
" set cursorline
" show cursor coordinates at bottom right
set ruler
" always show status line for last window
set laststatus=2
" show line number relative to cursor in insert mode
" set nu
" au InsertEnter set relativenumber
" au InsertLeave set norelativenumber

" Airline settings
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
" " let g:airline#extensions#obsession#enabled = 0
" " let g:airline#extensions#obsession#indicator_text = '$'
" display all buffers when only one tab open
let g:airline#extensions#tabline#enabled = 0

" Pencil settings
" let g:pencil_spell_undercurl = 1
" let g:pencil_higher_contrast_ui = 1
" let g:pencil_terminal_italics = 1

" Lightline settings
" let g:lightline = {
" 	\ 'colorscheme': 'tender',
" 	\ }
" Lightline buffer settings
" let g:lightline#bufferline#show_number  = 1
" let g:lightline#bufferline#shorten_path = 0
" let g:lightline#bufferline#unnamed      = '[No Name]'
" adds bufferline to lightline tabline
" set showtabline=2
" let g:lightline                  = {}
" let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}

""==GUI ONLY==
"if has("gui_running")
"	set guifont=Hermit:h12:cANSI:qDRAFT
"	highlight Cursor guifg=white guibg=black
"	highlight iCursor guifg=white guibg=steelblue
"	set guicursor+=i:hor5-iCursor
"	" Eliminate toolbars and scrollbars
"	set guioptions-=m
"	set guioptions-=T
"	set guioptions-=r
"	set guioptions-=L
"endif
