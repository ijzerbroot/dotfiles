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

function dtpg() {
                 ssh -N -L 5432:10.0.7.151:5432 saptech@scinfra.sapienzaconsulting.com
                 }

# Fuzzy find - see https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ZSH Syntax Highlighter - see https://github.com/zsh-users/zsh-syntax-highlighting
#source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls='ls --color'
if [ -e /home/frank/.nix-profile/etc/profile.d/nix.sh ]; then . /home/frank/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
export PATH=/home/frank/.cargo/bin:/home/frank/.local/bin:/home/frank/pwsh:/home/frank/go/bin:/home/frank/go1.16/bin:/home/frank/.dotnet:$PATH
export GO111MODULE=on
export DOTNET_CLI_TELEMETRY_OPTOUT=1
alias subl=subl.exe
alias kge='kubectl get events --sort-by=.metadata.creationTimestamp'
alias kubectx='kubectl config use-context $(kubectl config get-contexts -o=name | fzf)'
alias ec='emacsclient'
alias ecf='emacsclient $(fzf)'
alias vif='oni $(fzf)'
source /home/frank/.cargo/env
eval "$(starship init zsh)"
export EDITOR='nvim'
export KUBE_EDITOR='nvim'
#export DISPLAY=$(route -n | grep UG | head -n1 | awk '{print $2}'):0
#export LIBGL_ALWAYS_INDIRECT=0
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --type file --color=always"
export FZF_DEFAULT_OPTS="--ansi"
export PATH=/home/frank/.pgo/pgo:$PATH
export PGOUSER=/home/frank/.pgo/pgo/pgouser
export PGO_CA_CERT=/home/frank/.pgo/pgo/client.crt
export PGO_CLIENT_CERT=/home/frank/.pgo/pgo/client.crt
export PGO_CLIENT_KEY=/home/frank/.pgo/pgo/client.key
export PGO_APISERVER_URL=https://127.0.0.1:8444
export PSQL_PAGER="pspg"
HISTFILE=/home/frank/.zsh_history
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
