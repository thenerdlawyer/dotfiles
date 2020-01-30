" List of plugins called by vim-plug
"
if has('gui_running')
	call plug#begin()
else
	call plug#begin('~/.vim/plugged')
endif

" WRITING
Plug 'vim-airline/vim-airline' "status/tabline
Plug 'vim-airline/vim-airline-themes' "airline themes
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'tpope/vim-abolish' " Fancy abbreviation replacements
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode
Plug 'reedes/vim-lexical' " Better spellcheck mappings
Plug 'reedes/vim-litecorrect' " Better autocorrections
Plug 'reedes/vim-textobj-sentence' " Treat sentences as text objects
Plug 'reedes/vim-wordy' " Weasel words and passive voice

Plug 'reedes/vim-textobj-quote' " smart quotes
Plug 'tpope/vim-liquid' " liquid/jekyll syntax



Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary' "comment stuff out
Plug 'tpope/vim-surround' " clean switching among sessions
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'mattn/calendar-vim' " Calendar


" Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#modules#disabled = ['folding']

" Pencil Config
  augroup pencil
   autocmd!
   autocmd filetype markdown,mkd call pencil#init()
       \ | call lexical#init()
       \ | call litecorrect#init()
"      \ | setl spell spl=en_us fdl=4 noru nonu nornu
       \ | setl fdo+=search
  augroup END

" Pencil / Writing Controls {{{
   let g:pencil#wrapModeDefault = 'soft'
   let g:pencil#textwidth = 74
   let g:pencil#joinspaces = 0
   let g:pencil#cursorwrap = 1
   let g:pencil#conceallevel = 3
   let g:pencil#concealcursor = 'c'
   let g:pencil#softDetectSample = 20
   let g:pencil#softDetectThreshold = 130
" }}}

" augroup pencil
" 	autocmd!
" 	autocmd FileType markdown,mkd,wiki,txt call pencil#init()
"				\ | colo pencil
"				\ | setl nospell
" augroup END

" COLORSCHEMES
" Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'dracula/vim',{'as': 'dracula'}
" Plug 'Taverius/vim-colorscheme-manager'
" Plug 'reedes/vim-colors-pencil' " iA Writer-inspired theme
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-colorscheme-switcher'
" let g:colorscheme_switcher_exclude = ['default', 'base16*']

" FZF
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end() " Initialize plugin system

