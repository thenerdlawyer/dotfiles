" List of plugins called by vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline' "status/tabline
Plug 'vim-airline/vim-airline-themes' "airline themes
Plug 'vimwiki/vimwiki' "wiki
Plug 'reedes/vim-pencil' " Super-powered writing things
Plug 'reedes/vim-colors-pencil' " iA Writer-inspired theme
" Plug 'reedes/vim-lexical' " Better spellcheck mappings
" Plug 'reedes/vim-litecorrect' " Better autocorrections
" Plug 'reedes/vim-textobj-sentence' " Treat sentences as text objects
" Plug 'reedes/vim-wordy' " Weasel words and passive voice
" Plug 'tpope/vim-abolish' " Fancy abbreviation replacements
Plug 'tpope/vim-commentary' "comment stuff out
Plug 'tpope/vim-surround' "quoting/parenthesizing made simple
Plug 'junegunn/limelight.vim' " Highlights only active paragraph
Plug 'junegunn/goyo.vim' " Full screen writing mode

"Initialize plugin system
call plug#end()

