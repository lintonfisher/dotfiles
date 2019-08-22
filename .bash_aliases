# Functions

# Faster than doing cd ../../..
function up() {
	times=$1
	while [ "$times" -gt "0" ]; do
		cd ..
		times=$(($times -1))
	done
}

# For the bash prompt
function nonzero_return() {
	[ $? -ne 0 ] && echo "[$?]"
}

# Improve basic commands
alias ln='ln -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias rmdir='rmdir -v'
alias ls='ls --color --group-directories-first'
alias la='ls -lAGh --color --group-directories-first'
alias grep='grep --color'

# Clear terminal faster
alias clear='tput clear'

# Config editing
alias bashrc='vim $HOME/.bashrc && source $HOME/.bashrc'
alias bashalias='vim $HOME/.bash_aliases && source $HOME/.bash_aliases'

# Aptitude
alias apt='sudo apt'
alias aptar='apt autoremove'
alias apti='apt install'
alias aptr='apt remove'
alias aptu='apt update'
alias aptup='apt upgrade'

# Git
alias ga='git add'
alias gc='git commit'
alias gpu='git push'
alias gpl='git pull'
alias gs='git status'
alias gl='git log'
