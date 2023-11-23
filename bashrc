# aliases
function mcd() {
    # Make a directory and then change to it.  This will be used like an alias.
    mkdir $1
    cd $1
}

# less
alias less='less -r'
# -r = --raw-control-chars .. means to display raw characters instead of
# showing ^M, ^R, etc.

# rm
alias rm='rm -i'
# -i = --interactive ... means to prompt before deleting any files, unless
# -f is added

# whence
alias whence='type -a'
# prints description of a command (i.e., alias, location, etc.) -a means to
# print all of the places that contain an executable matching the argument

# ls
# GNU version of ls
#alias ls='ls -F --color=tty -B'

# ll
alias ll='ls -l'
# -l = use long listing format


export PS1='\[\e]0;\w\a\]\n\[\e[01;32m\]\u@\h \[\e[33m\]\w\[\e[01;0m\]\n\$ '
export PS2='> '
export PS4='+ '

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

