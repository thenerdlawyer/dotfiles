" Vim-Plug
if has('gui_running') == 0
	if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
endif

" Identify .md as Markdown
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" enable all filetype plugin aspects
filetype indent plugin on   
" enable highlighting rules
syntax on   
" gets rid of vi compatibility
set nocompatible 
" avoids some security exploits regarding modelines 
set modelines=0 
" show completion options above command
set wildmenu    
" when more than one match, list all matches and complete first
set wildmode=list:longest   
" indicates fast terminal connection
set ttyfast     
" sets utf-8 encoding
set encoding=utf-8
" change <Leader> from "\" to ","
let mapleader=","
" Edit .vimrc 
nnoremap <leader>rc :tabe $MYVIMRC<CR>
" Source .vimrc
nnoremap <leader>rs :so $MYVIMRC<CR>
" obviate shift for :
nnoremap ; :
" set 4-column tabs
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set noexpandtab 
" inserts timestamp
nnoremap <F12> "=strftime("%Y-%m-%d-%H-%M-%S")<CR>P
inoremap <F12> <C-R>=strftime("%Y-%m-%d-%H-%M-%S")<CR>	

""SOURCES"
" console
if has("gui_running")
so \\wsl$\Ubuntu\home\nerdlawyer\.vim-plug.vim
so \\wsl$\Ubuntu\home\nerdlawyer\.guioptions.vim
so \\wsl$\Ubuntu\home\nerdlawyer\.searchoptions.vim
so \\wsl$\Ubuntu\home\nerdlawyer\.navigation.vim
so \\wsl$\Ubuntu\home\nerdlawyer\.mywikioptions.vim
so \\wsl$\Ubuntu\home\nerdlawyer\.ConText.vim
" so ~/.WriteModes.vim
else
so ~/.vim-plug.vim
so ~/.guioptions.vim
so ~/.searchoptions.vim
so ~/.navigation.vim
so ~/.mywikioptions.vim
so ~/.ConText.vim
" so ~/.WriteModes.vim
endif
