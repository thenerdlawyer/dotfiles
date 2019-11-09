let nerdwiki = {}
let nerdwiki.path = '$DROPBOX/nerdwiki'
let nerdwiki.syntax = 'markdown'
let nerdwiki.ext = 'md'

let escapewiki = {}
let escapewiki.path = '$DROPBOX/escapewiki'

let deadwiki = {}
let deadwiki.path = '$DROPBOX/deadwiki'

let g:vimwiki_list = [nerdwiki, escapewiki, deadwiki]

let g:vimwiki_folding = 'list'
let g:vimwiki_global_ext = 0

nmap <Leader>wq <Plug>VimwikiVSplitLink
nmap <Leader>we <Plug>VimwikiSplitLink
nmap <Leader>wb <Plug>VimwikiTabnewLink

nnoremap <Leader>gtd :call ConText()<CR>

noremap <Leader>cg <Esc>dd:split $DROPBOX/nerdwiki/Agendas.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>ca <Esc>dd:split $DROPBOX/nerdwiki/Anywhere.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>cp <Esc>dd:split $DROPBOX/nerdwiki/Phone.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>cc <Esc>dd:split $DROPBOX/nerdwiki/Computer.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>ce <Esc>dd:split $DROPBOX/nerdwiki/Errands.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>cm <Esc>dd:split $DROPBOX/nerdwiki/Email.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>ch <Esc>dd:split $DROPBOX/nerdwiki/Home.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>co <Esc>dd:split $DROPBOX/nerdwiki/Office.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>cw <Esc>dd:split $DROPBOX/nerdwiki/Waiting.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>cs <Esc>dd:split $DROPBOX/nerdwiki/Someday.md<CR><Bar>Gp<Esc>:wq<CR>
noremap <Leader>cr <Esc>:.s/\[@GTD.*\].\/.//<CR>

" Correct for shift from postfix to prefix

nnoremap <Leader>tg :vimgrep /@GTD_Agendas/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>ta :vimgrep /@GTD_Anywhere/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>tp :vimgrep /@GTD_Phone/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>tc :vimgrep /@GTD_Computer/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>te :vimgrep /@GTD_Errands/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>tm :vimgrep /@GTD_Email/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>th :vimgrep /@GTD_Home/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>to :vimgrep /@GTD_Office/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>tw :vimgrep /@GTD_Waiting_For/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
nnoremap <Leader>ts :vimgrep /@GTD_Someday_Maybe/j ~/vimwiki/Capture.md<CR>:call SingleText()<CR>
