# Vars
dotfile_dir=$HOME/.dotfiles

if [ ! -d $dotfile_dir ]; then
	echo $dotfile_dir does not exist!
	echo Did you clone the repo to ~/.dotfiles ?
	exit 1
fi

# Backup existing dotfiles
if [ -f $HOME/.bashrc ]; then
	mv $HOME/.bashrc $HOME/.bashrc.old
fi
if [ -f $HOME/.bash_aliases ]; then
	mv $HOME/.bash_aliases $HOME/.bash_aliases.old
fi
if [ -f $HOME/.dircolors ]; then
	mv $HOME/.dircolors $HOME/.dircolors.old
fi
if [ -f $HOME/.inputrc ]; then
	mv $HOME/.inputrc $HOME/.inputrc.old
fi

# Symlink new dotfiles
ln -sf $dotfile_dir/.bashrc $HOME/.bashrc
ln -sf $dotfile_dir/.bash_aliases $HOME/.bash_aliases
ln -sf $dotfile_dir/.dircolors $HOME/.dircolors
ln -sf $dotfile_dir/.inputrc $HOME/.inputrc

echo Done!
