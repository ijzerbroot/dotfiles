
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

if [ -e /Users/frank/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/frank/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export PATH=/Users/frank/.local/bin:/usr/local/bin:/opt/homebrew/bin:/Users/frank/go/bin:$PATH
source $HOME/.cargo/env
export GO111MODULE=on
export DOTNET_CLI_TELEMETRY_OPTOUT=1
alias subl='~/Apps/Sublime\ Text.app/Contents/MacOS/sublime_text'
alias kge='kubectl get events --sort-by=.metadata.creationTimestamp'
alias kubectx='kubectl config use-context $(kubectl config get-contexts -o=name | fzf)'
alias ec='emacsclient'
alias ecf='emacsclient $(fzf)'
alias vif='oni $(fzf)'
alias ls='ls -G'
source /Users/frank/.cargo/env
eval "$(starship init zsh)"
export EDITOR='nvim'
export KUBE_EDITOR='nvim'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --type file --color=always"
export FZF_DEFAULT_OPTS="--ansi"
export PATH=/Users/frank/.pgo/pgo:$PATH
export PGOUSER=/Users/frank/.pgo/pgo/pgouser
export PGO_CA_CERT=/Users/frank/.pgo/pgo/client.crt
export PGO_CLIENT_CERT=/Users/frank/.pgo/pgo/client.crt
export PGO_CLIENT_KEY=/Users/frank/.pgo/pgo/client.key
export PGO_APISERVER_URL=https://127.0.0.1:8444
export PSQL_PAGER="bat --color=always --wrap=character -p"
export PG_COLOR="always"
HISTFILE=/Users/frank/.zsh_history
HISTSIZE=500000
SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY
#source $HOME/.zsh/zsh-histdb/sqlite-history.zsh
#autoload -Uz add-zsh-hook
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#_zsh_autosuggest_strategy_histdb_top_here() {
#    local query="select commands.argv from
#history left join commands on history.command_id = commands.rowid
#left join places on history.place_id = places.rowid
#where places.dir LIKE '$(sql_escape $PWD)%'
#and commands.argv LIKE '$(sql_escape $1)%'
#group by commands.argv order by count(*) desc limit 1"
#    suggestion=$(_histdb_query "$query")
#}

#ZSH_AUTOSUGGEST_STRATEGY=histdb_top_here
eval "$(mcfly init zsh)"
eval "$(zoxide init zsh)"
