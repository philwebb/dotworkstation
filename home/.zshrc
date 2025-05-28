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

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/pwebb/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
