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

