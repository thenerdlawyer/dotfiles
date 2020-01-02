## Installing dotfiles to another system

### Install and set up zsh as default

1. `sudo apt install zsh` 
2. Verify installation by running `zsh --version`. Expected result: `zsh 5.1.1` or more recent.
3. Make it your default shell: `chsh -s $(which zsh)`
4. Log out and login back again to use your new default shell.
5. Test that it worked with `echo $SHELL`. Expected result: `/bin/zsh` or similar.
6. Test with `$SHELL --version`. Expected result: 'zsh 5.1.1' or similar

### Install autojump

	sudo apt install autojump

### Install Powerlevel10k

	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

### Clone dotfiles

    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
    source ~/.zshrc
    echo ".dotfiles.git" >> .gitignore
    git clone --bare https://www.github.com/thenerdlawyer/dotfiles.git $HOME/.dotfiles.git
    dotfiles checkout
		rm .zshrc
    dotfiles config --local status.showUntrackedFiles no

### Bring in Submodules
    
	dotfiles submodule init
	dotfiles submodule update

### Install Jekyll

	sudo apt-get install ruby-full build-essential zlib1g-dev
	gem install jekyll bundler

### Install Powerline Fonts

	sudo apt install powerline
	sudo apt install fonts-font-awesome

---

### Initial Setup of Bare Repository

Git is the only dependency. The following four lines will set up the bare repository.

    git init --bare $HOME/.dotfiles.git
    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
    source ~/.zshrc
    dotfiles config --local status.showUntrackedFiles no

1.  Create a git bare repository at `~/.dotfiles.git` to track files.
2.  Add alias setting to shell configuration file. I use zsh so it’s `.zshrc`. For bash, it’d be `.bashrc`. Note how the paths for git directory and working tree are set.
3.  Reload the shell setting.
4.  Prevent untracked files from showing up when we call `dotfiles status`.

That finishes the setup. Use the aliased command from the home directory to manage files, and use git remote repo if you want to manage the files online.

    dotfiles status
    dotfiles add .vimrc
    dotfiles commit -m "Add vimrc"
    dotfiles remote add origin https://www.github.com/username/repo.git
    dotfiles push origin master

#### submodules

to first initialize my dotfiles repo to use submodules, and then for each of the plugins I wanted to install:

    dotfiles submodule add https://github.com/some-username/some-plugin.git pack/plugins/start/some-plugin
