alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias a='ack-grep -i'

RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[31;1m\]"
YELLOW="\[\033[33;1m\]"
WHITE="\[\033[37;1m\]"
BLUE="\[\033[34m\]"
GREEN="\[\033[32m\]"

PS1="${RESET}${GREEN}\u@\h${BLUE}\w${WHITE}> "

# .bash_local will be git ignored
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
