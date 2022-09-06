# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="gozilla"
export CASE_SENSITIVE="true"
export DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(compleat cp docker dirpersist gcloud gem git gradle history kubectl mvn macos rsync ruby rvm screen sublime tmux)
source $ZSH/oh-my-zsh.sh

# zsh specifics
alias git='noglob git'
setopt no_beep

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pwebb/sdkman"
[[ -s "/Users/pwebb/sdkman/bin/sdkman-init.sh" ]] && source "/Users/pwebb/sdkman/bin/sdkman-init.sh"
