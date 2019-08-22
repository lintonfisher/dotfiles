# .bashrc

# Fix the really obnoxious WSL DirColors
eval $(dircolors $HOME/.dircolors)

# Get Bash Aliases
if [ -f $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# Make tab-complete case insensitive
if [ ! -f $HOME/.inputrc ]; then
	echo 'set completion-ignore-case On' >> $HOME/.inputrc
fi

# Set prompt
export PS1='\n[\A] [\w] `nonzero_return`\n> '
