#!/bin/bash

# Vars
backup_dir=$HOME/.dotfiles/backup

if [ ! -d $backup_dir ]
then
	echo Backup directory doesn\'t exist!
	echo Are you sure you ran the ./install.sh script already? 
	exit 1
fi

# Restore backups
if [ -f $backup_dir/.bashrc_backup ]
then
	rm $HOME/.bashrc
	mv $backup_dir/.bashrc_backup $HOME/.bashrc
fi
if [ -f $backup_dir/.bash_aliases_backup ]
then
	rm $HOME/.bash_aliases
	mv $backup_dir/.bash_aliases_backup $HOME/.bash_aliases
fi
if [ -f $backup_dir/.dircolors_backup ]
then
	rm $HOME/.dircolors
	mv $backup_dir/.dircolors_backup $HOME/.dircolors
fi
if [ -f $backup_dir/.inputrc_backup ]
then
	rm $HOME/.inputrc
	mv $backup_dir/.inputrc_backup $HOME/.inputrc
fi

echo Done!
