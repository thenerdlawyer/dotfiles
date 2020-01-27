nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase   " override 'ignorecase' if shearch pattern contains uppers
set gdefault    " g (global) is default for search
set incsearch   " highlight results as search is typed
set showmatch   " when bracket is inserted, briefly jump to the matching one
set hlsearch    " highlight all matches
nnoremap <leader><space> :noh<cr> " toggle highlighting for hlsearch
"nnoremap <tab> %
"vnoremap <tab> %


