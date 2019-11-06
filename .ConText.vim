" script to generate list of all open tasks by context

fu! ConText()
	:vsplit ~/MasterList.md
	:execute "normal! dG"
	:call append(0, "# MASTER LIST")
	:r $DROPBOX/nerdwiki/Agendas.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Anywhere.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Computer.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Errands.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Email.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Home.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Office.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Phone.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Someday Maybe.md
	:execute "normal! Go\<Esc>"
  :r $DROPBOX/nerdwiki/Waiting For.md
	:execute "normal! Go\<Esc>"
	:let my_var = expand('%:p')
	:w
	:silent execute '!/mnt/c/Program\ Files/Typora/Typora.exe ~/MasterList.md'
	:q
	:silent execute '!/mnt/c/Program\ Files\ \(x86\)/Adobe/Acrobat\ DC/Acrobat/Acrobat.exe ~/MasterList.pdf'
	:redraw!
endfun
