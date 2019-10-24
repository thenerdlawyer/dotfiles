" List of plugins called by vim-plug
"
if has('gui_running')
	call plug#begin()
else
	call plug#begin('~/.vim/plugged')
endif

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
Plug 'tpope/vim-surround' 
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Highlights only active paragraph
Plug 'junegunn/limelight.vim' 
" Full screen writing mode
Plug 'junegunn/goyo.vim' 
" colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
"wiki
Plug 'vimwiki/vimwiki' 

"Initialize plugin system
call plug#end()

