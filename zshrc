# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="gozilla"
export CASE_SENSITIVE="true"
export DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(compleat cp docker dirpersist gcloud gem gitfast gradle history httpie kubectl mvn macos rsync ruby rvm screen sublime tmux)
source $ZSH/oh-my-zsh.sh

# zsh specifics
alias git='noglob git'
setopt no_beep

function erase_history { local HISTSIZE=0; }

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pwebb/sdkman"
[[ -s "/Users/pwebb/sdkman/bin/sdkman-init.sh" ]] && source "/Users/pwebb/sdkman/bin/sdkman-init.sh"

