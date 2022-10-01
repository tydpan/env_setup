# ls 
alias ls='ls --color=auto'
alias ll='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
# alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias ld='ls -ltFh'   #long list,sorted by date,show type,human readable
# alias ll='ls -l'      #long list
alias lda='ls -lAtFh'

alias grep='grep --color'

alias ..='cd ..'         # Go up one directory
alias cd..='cd ..'       # Common misspelling for going up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back

function findPort() {
    test=$(lsof -i -P | grep "localhost:$port (LISTEN)")
    while [ ! -z "$test" ]; do
        port=$(($port + 1))
        test=$(lsof -i -P | grep "localhost:$port (LISTEN)")
    done
    echo "$port"
}

alias lab='jupyter lab --no-browser --port=${MYPORT}'
alias nvd='nvidia-smi | tee /dev/stderr | awk "/ C / {print \$3}" | xargs -r ps -up'
alias tensorboard='tensorboard --port $(findPort)'