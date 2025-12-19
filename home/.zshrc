export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gozilla"
CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(direnv docker docker-compose gh gitfast gradle httpie macos mvn rsync rust sdk spring vscode)

source $ZSH/oh-my-zsh.sh

zstyle ':omz:update' mode disabled

function erase_history { local HISTSIZE=0; }

alias git='noglob git'
setopt no_beep

export SDKMAN_DIR=~/sdkman
[[ -s "${SDKMAN_DIR}" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
