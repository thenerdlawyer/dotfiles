" List of plugins called by vim-plug
call plug#begin('~/.vim/plugged')

"status/tabline
Plug 'vim-airline/vim-airline' 
"airline themes
Plug 'vim-airline/vim-airline-themes' 
"wiki
Plug 'vimwiki/vimwiki' 
" Super-powered writing things
Plug 'reedes/vim-pencil' 
" iA Writer-inspired theme
Plug 'reedes/vim-colors-pencil' 
"comment stuff out
Plug 'tpope/vim-commentary' 
" continuously updated session files
Plug 'tpope/vim-obsession'
" clean switching among sessions
Plug 'dhruvasagar/vim-prosession'
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround' 
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Highlights only active paragraph
Plug 'junegunn/limelight.vim' 
" Full screen writing mode
Plug 'junegunn/goyo.vim' 

"Initialize plugin system
call plug#end()

