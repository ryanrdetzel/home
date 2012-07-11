alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias a='ack-grep -i'

# .bash_local will be git ignored
if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi
