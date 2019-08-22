# Restore backups
if [ -f $HOME/.bashrc.old ]; then
	rm $HOME/.bashrc
	mv $HOME/.bashrc.old $HOME/.bashrc
fi
if [ -f $HOME/.bash_aliases.old ]; then
	rm $HOME/.bash_aliases
	mv $HOME/.bash_aliases.old $HOME/.bash_aliases
fi
if [ -f $HOME/.dircolors.old ]; then
	rm $HOME/.dircolors
	mv $HOME/.dircolors.old $HOME/.dircolors
fi
if [ -f $HOME/.inputrc.old ]; then
	rm $HOME/.inputrc
	mv $HOME/.inputrc.old $HOME/.inputrc
fi

echo Done!
