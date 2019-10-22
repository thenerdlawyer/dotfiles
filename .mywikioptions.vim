
 let mywiki = {}
 let mywiki.path = '~/wikis/mywiki/'
 let mywiki.path_html = '~/wikis/mywiki_html/'
 let mywiki.syntax = 'markdown'
 let mywiki.ext = '.md'
 let mywiki.name = 'NerdWiki'

" let escapewiki = {}
" let escapewiki.path = '~/wikis/escapewiki/'
" let escapewiki.path_html = '~/wikis/escapewiki/escapewiki_html/'
" let escapewiki.template_path = '~/wikis/escapewiki/templates'
" let escapewiki.template_default = 'default'
" let escapewiki.template_ext = '.html'
" let escapewiki.syntax = 'default'
" let escapewiki.ext = '.wiki'
" let escapewiki.name = 'EscapeWiki'

" let g:vimwiki_list = [escapewiki]

set wildignore=*.md~

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
noremap <Leader>mc <Esc>^i~~<Esc>$BbC~~<Esc>

noremap <Leader>tg :vimgrep /@GTD_Agendas/j **/*<CR>:cw<CR>
noremap <Leader>ta :vimgrep /@GTD_Anywhere/j **/*<CR>:cw<CR>
noremap <Leader>tp :vimgrep /@GTD_Phone/j **/*<CR>:cw<CR>
noremap <Leader>tc :vimgrep /@GTD_Computer/j **/*<CR>:cw<CR>
noremap <Leader>te :vimgrep /@GTD_Errands/j **/*<CR>:cw<CR>
noremap <Leader>tm :vimgrep /@GTD_Email/j **/*<CR>:cw<CR>
noremap <Leader>th :vimgrep /@GTD_Home/j **/*<CR>:cw<CR>
noremap <Leader>to :vimgrep /@GTD_Office/j **/*<CR>:cw<CR>
noremap <Leader>tw :vimgrep /@GTD_Waiting_For/j **/*<CR>:cw<CR>
noremap <Leader>ts :vimgrep /@GTD_Someday_Maybe/j **/*<CR>:cw<CR>
