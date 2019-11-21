" List of plugins called by vim-plug
"
if has('gui_running')
	call plug#begin()
else
	call plug#begin('~/.vim/plugged')
endif

"status/tabline
" Plug 'vim-airline/vim-airline' 
"airline themes
" Plug 'vim-airline/vim-airline-themes' 
"wiki
Plug 'vimwiki/vimwiki' 
" Super-powered writing things
Plug 'reedes/vim-pencil' 
augroup pencil
	autocmd!
	autocmd FileType markdown,mkd,wiki call pencil#init()
				\ | setl nospell
augroup END
" iA Writer-inspired theme
" Plug 'reedes/vim-colors-pencil' 
"comment stuff out
Plug 'tpope/vim-commentary' 
" clean switching among sessions
Plug 'tpope/vim-surround' 
" liquid/jekyll syntax
Plug 'tpope/vim-liquid' 
" git wrapper
Plug 'tpope/vim-fugitive'
" Calendar
Plug 'mattn/calendar-vim'
" Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#modules#disabled = ['folding']
" smart quotes
Plug 'reedes/vim-textobj-quote'
" colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'Taverius/vim-colorscheme-manager'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
let g:colorscheme_switcher_exclude = ['default', 'base16*']


" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Highlights only active paragraph
" Plug 'junegunn/limelight.vim' 
" Full screen writing mode
"	Plug 'junegunn/goyo.vim' 
" continuously updated session files
"	Plug 'tpope/vim-obsession'

"Initialize plugin system
call plug#end()

