# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

# tmux
alias tnew='tmux new -s'
alias tattach='tmux attach -t'
# promptline (only on OS X with homebrew present)
test -f ~/.shell_prompt.sh && source ~/.shell_prompt.sh

if [ "x$TMUX" != "x" ]; then
    tmux rename-window $($JO_DIRABBREV) >/dev/null 2>&1
fi
