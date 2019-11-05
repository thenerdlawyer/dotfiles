" script to generate list of all open tasks by context

fu! ConText()
	:execute "normal! ggjdG\<Esc>"
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
	:execute "shellescape(cmd.exe /C start C:/Users/Msmith/Dropbox/nerdwiki/MasterList.md)"
endfun
