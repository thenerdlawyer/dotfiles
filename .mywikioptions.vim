let g:vimwiki_list = [{'path': '~/vimwiki/',
						\ 'syntax': 'markdown', 'ext': '.md'}]

nmap <Leader>wq <Plug>VimwikiVSplitLink
nmap <Leader>we <Plug>VimwikiSplitLink
nmap <Leader>wb <Plug>VimwikiTabnewLink

nnoremap <Leader>gtd :call ConText()<CR>

noremap <Leader>cg <Esc>A\ [@GTD_Agendas]<Esc>
noremap <Leader>ca <Esc>A\ [@GTD_Anywhere]<Esc>
noremap <Leader>cp <Esc>A\ [@GTD_Phone]<Esc>
noremap <Leader>cc <Esc>A\ [@GTD_Computer]<Esc>
noremap <Leader>ce <Esc>A\ [@GTD_Errands]<Esc>
noremap <Leader>cm <Esc>A\ [@GTD_Email]<Esc>
noremap <Leader>ch <Esc>A\ [@GTD_Home]<Esc>
noremap <Leader>co <Esc>A\ [@GTD_Office]<Esc>
noremap <Leader>cw <Esc>A\ [@GTD_Waiting_For]<Esc>
noremap <Leader>cs <Esc>A\ [@GTD_Someday_Maybe]<Esc>
noremap <Leader>ea <Esc>A(EMAIL)<Esc>
" strikeout
noremap <Leader>mc <Esc>^i~~<Esc>$BbC~~<Esc>

nnoremap <Leader>tg :vimgrep /@GTD_Agendas/j **/*<CR>:cw<CR>
nnoremap <Leader>ta :vimgrep /@GTD_Anywhere/j **/*<CR>:cw<CR>
nnoremap <Leader>tp :vimgrep /@GTD_Phone/j **/*<CR>:cw<CR>
nnoremap <Leader>tc :vimgrep /@GTD_Computer/j **/*<CR>:cw<CR>
nnoremap <Leader>te :vimgrep /@GTD_Errands/j **/*<CR>:cw<CR>
nnoremap <Leader>tm :vimgrep /@GTD_Email/j **/*<CR>:cw<CR>
nnoremap <Leader>th :vimgrep /@GTD_Home/j **/*<CR>:cw<CR>
nnoremap <Leader>to :vimgrep /@GTD_Office/j **/*<CR>:cw<CR>
nnoremap <Leader>tw :vimgrep /@GTD_Waiting_For/j **/*<CR>:cw<CR>
nnoremap <Leader>ts :vimgrep /@GTD_Someday_Maybe/j **/*<CR>:cw<CR>
