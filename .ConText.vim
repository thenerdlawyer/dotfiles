" script to generate list of all open tasks by context

fu! ConText()
    cd ~/vimwiki/
    e ContextList.md
    exe ":normal! ggdG"
    put!=strftime('%c')
    let contextlist = ["Agendas", "Anywhere", "Phone", "Computer", "Errands", "Email", "Home", "Office", "Waiting_For", "Someday_Maybe"]
    for x in contextlist
        exe ":normal! o## ".x.""
        silent! exe "vimgrep /@GTD_" .x. "/j **/*"
        for i in getqflist()
            let p = i.text
            exe ":normal! o* ".p."\<esc>"
            %s/\\ \[@GTD.*]//
        endfor
    endfor
    w
endfun

