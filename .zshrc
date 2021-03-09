# Use powerline
USE_POWERLINE="true"
## Source manjaro-zsh-configuration
#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi
## Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

# PURE theme - see https://github.com/sindresorhus/pure
#fpath+=$HOME/.zsh/pure

#autoload -U promptinit; promptinit
#prompt pure

# Fuzzy find - see https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ZSH Syntax Highlighter - see https://github.com/zsh-users/zsh-syntax-highlighting
#source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls='ls --color'
if [ -e /home/frank/.nix-profile/etc/profile.d/nix.sh ]; then . /home/frank/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export PATH=/home/frank/.local/bin:/home/frank/go/bin:/home/frank/.dotnet:$PATH
export GO111MODULE=on
export DOTNET_CLI_TELEMETRY_OPTOUT=1
alias kge='kubectl get events --sort-by=.metadata.creationTimestamp'
alias kubectx='kubectl config use-context $(kubectl config get-contexts -o=name | fzf)'
alias ec='emacsclient'
alias ecf='emacsclient $(fzf)'
alias vif='oni $(fzf)'
source /home/frank/.cargo/env
eval "$(starship init zsh)"
export EDITOR=oni
#export DISPLAY=$(route -n | grep UG | head -n1 | awk '{print $2}'):0
export PATH=~/Apps/pwsh:$PATH
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --type file --color=always"
export FZF_DEFAULT_OPTS="--ansi"
source $HOME/.zsh/zsh-histdb/sqlite-history.zsh
autoload -Uz add-zsh-hook
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
_zsh_autosuggest_strategy_histdb_top_here() {
    local query="select commands.argv from
history left join commands on history.command_id = commands.rowid
left join places on history.place_id = places.rowid
where places.dir LIKE '$(sql_escape $PWD)%'
and commands.argv LIKE '$(sql_escape $1)%'
group by commands.argv order by count(*) desc limit 1"
    suggestion=$(_histdb_query "$query")
}

ZSH_AUTOSUGGEST_STRATEGY=histdb_top_here
