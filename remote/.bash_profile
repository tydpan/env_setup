export MYPORT=8888
if [ -f .bash_aliases ]; then
    source .bash_aliases
fi

export PS1="\[\033[31m\][\d \t] \[\033[36;1m\]\u\[\033[m\]@\[\033[32;1m\]mlb\n\[\033[33;1m\]:\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# make alias available in non-interative shell
shopt -s expand_aliases