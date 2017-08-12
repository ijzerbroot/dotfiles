
export TERM=xterm-256color

function pl9k() {
git clone https://github.com/bhilburn/powerlevel9k ~/powerlevel9k
cd $HOME
cd powerlevel9k && git pull https://github.com/bhilburn/powerlevel9k
cd -
}

function custom_uptime() {
    echo -n "`uptime | sed 's/.* up /up /' | sed 's/,.*//'`"
}

function custom_procs() {
    echo -n "`ps -ef | wc -l | awk '{ print $1 }'` procs"
}

function spectrum_ls() {
  for code in {000..255}; do
    print -P -- "$code: %F{$code}This text is colorized%f"
  done
}

source  ~/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_CUSTOM_UPTIME="custom_uptime"
POWERLEVEL9K_CUSTOM_PROCS="custom_procs"
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_NODE_VERSION_BACKGROUND='28'
POWERLEVEL9K_NODE_VERSION_FOREGROUND='15'
POWERLEVEL9K_BACKGROUND_JOBS_ICON=''
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_STATUS_OK_BACKGROUND="black"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="black"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
#POWERLEVEL9K_TIME_FORMAT="%D{%H:%M  \uE868  %d.%m.%y}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status background_jobs root_indicator context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv nvm custom_procs load ram rbenv custom_uptime time)
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=" ❯ "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
POWERLEVEL9K_TIME_BACKGROUND='190'
POWERLEVEL9K_TIME_FOREGROUND='22'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="008"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="007"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="008"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="red"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=${POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND}
POWERLEVEL9K_DIR_HOME_BACKGROUND=${POWERLEVEL9K_DIR_DEFAULT_BACKGROUND}
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=${POWERLEVEL9K_DIR_DEFAULT_BACKGROUND}
#POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='36'
#POWERLEVEL9K_LOAD_NORMAL_BACKGROUND='214'
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND=${POWERLEVEL9K_DIR_DEFAULT_BACKGROUND}
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND=${POWERLEVEL9K_DIR_DEFAULT_FOREGROUND}
POWERLEVEL9K_RAM_BACKGROUND='008'
POWERLEVEL9K_RAM_FOREGROUND='007'
POWERLEVEL9K_CUSTOM_UPTIME_BACKGROUND='99'
#POWERLEVEL9K_CUSTOM_PROCS_BACKGROUND='214'
POWERLEVEL9K_CUSTOM_PROCS_BACKGROUND=${POWERLEVEL9K_DIR_DEFAULT_BACKGROUND}
POWERLEVEL9K_CUSTOM_PROCS_FOREGROUND=${POWERLEVEL9K_DIR_DEFAULT_FOREGROUND}
