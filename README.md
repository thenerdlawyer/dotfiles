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

### Clone dotfiles

    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
    source ~/.zshrc
    echo ".dotfiles.git" >> .gitignore
    git clone --bare https://www.github.com/thenerdlawyer/dotfiles.git $HOME/.dotfiles.git
    dotfiles checkout
    dotfiles config --local status.showUntrackedFiles no

1.  Create alias to ensure that the git bare repository works without problem.
2.  Reload the shell setting to use that alias.
3.  Add `.dotfiles.git` directory to `.gitignore` to prevent recursion issues.
4.  Clone the repo.
5.  Check if it works fine.
6.  If you already have configuration files with identical names, checkout will fail. Back up and remove those files. Skip back up if you don’t need them.
7.  Prevent untracked files from showing up on `dotfiles status`.

### Bring in Submodules
    
    dotfiles submodule init
	dotfiles submodule update

### Install Jekyll

	sudo apt-get install ruby-full build-essential zlib1g-dev
	gem install jekyll bundler

### Install Powerline Fonts

	cd ~/fonts
	cp *.* /mnt/c/Users/username/Desktop/

double-click and click install

Change terminal font

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
