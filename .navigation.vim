" take off training wheels

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"
" move up/down by screen line instead of file line
nnoremap j gj
nnoremap k gk

" Avoid a million j's when I forget I'm in insert mode

inoremap jj <ESC> 
inoremap hh <ESC> 
inoremap kk <ESC> 

" buffer navigation
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <F4> :bn<CR>
:nnoremap <F3> :bp<CR>

" close buffer without closing pane
nmap <leader>cb :ene<CR>:bw #<CR>

" makes backspace work in insert mode
set backspace=indent,eol,start 

" window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

