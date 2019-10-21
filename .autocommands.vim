if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
"  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " set green theme for escapewiki
"  autocmd BufNewFile,BufRead *.wiki colo blue

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")


