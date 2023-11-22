#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# .zshrc file for Mac
#
# Author:  Vishnu Lagudu
# License: MIT
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# ALIASES
alias ecegrid="ssh vlagudu@ecegrid-thin4.ecn.purdue.edu"
alias v_ececomp="ssh vlagudu@ececomp.ecn.purdue.edu"
alias m_ececomp="ssh mg88@ececomp.ecn.purdue.edu"
alias hci="ssh vlagudu@hci.ecn.purdue.edu"
alias itap="ssh vlagudu@guru.itap.purdue.edu"

alias ports="ls /dev/tty.*"
alias conn="screen /dev/tty.usbserial-A50285BI 115200"
alias ls="ls -l -G -p"

alias python="python3"
# mcd
function mcd()
{
	mkdir $1
	cd $1
}

# Get the git branch
function g_b() 
{
    b=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')

    if [[ $b == "" ]]; then
        :
    else
		echo '('$b')'
    fi
}

# Up arrow to search history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# allow substitution inside the prompt
setopt prompt_subst
PROMPT='%B%F{2}%n@%m%f%b %B%F{3}%~%f%b %B%F{6}$(g_b)%f%b'$'\n''$ '
export PDK_ROOT=~/sky130A
