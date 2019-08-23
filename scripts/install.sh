#!/bin/bash

# Vars
dotfile_dir=$HOME/.dotfiles
backup_dir=$dotfile_dir/backup

# Check the shell is currently bash
# Change it if it isn't
if [[ ! $SHELL == *"bash" ]]
then
	echo 'You are currently not using Bash, would you like to switch? (Y/n):'
	read ans
	if [ ${ans,,} == 'y' ]
	then
		chsh -s $(which bash) || echo 'Failed to set shell!' ; exit 1
		echo 'Shell changed successfully!'
	else
		exit 1
	fi
fi

# Check the dotfiles repo is in the right place
if [ ! -d $dotfile_dir ]
then
	echo $dotfile_dir does not exist!
	echo Did you clone the repo to ~/.dotfiles ?
	exit 1
fi

# Create the backup dir if not exists
if [ ! -d $backup_dir ]
then
	mkdir -p $backup_dir
fi

# Backup existing dotfiles
if [ -f $HOME/.bashrc ]
then
	mv $HOME/.bashrc $backup_dir/.bashrc_backup
fi
if [ -f $HOME/.bash_aliases ]
then
	mv $HOME/.bash_aliases $backup_dir/.bash_aliases_backup
fi
if [ -f $HOME/.dircolors ]
then
	mv $HOME/.dircolors $backup_dir/.dircolors_backup
fi
if [ -f $HOME/.inputrc ]
then
	mv $HOME/.inputrc $backup_dir/.inputrc_backup
fi

# Symlink new dotfiles
ln -sf $dotfile_dir/.bashrc $HOME/.bashrc
ln -sf $dotfile_dir/.bash_aliases $HOME/.bash_aliases
ln -sf $dotfile_dir/.dircolors $HOME/.dircolors
ln -sf $dotfile_dir/.inputrc $HOME/.inputrc

echo Done!
