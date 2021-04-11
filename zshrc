# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="gozilla"
export CASE_SENSITIVE="true"
plugins=(ant brew compleat cp docker dirpersist gcloud gem git gradle grails history kubectl mvn osx redis-cli rsync ruby rvm scala screen sublime tmux)
source $ZSH/oh-my-zsh.sh

# zsh specifics
alias git='noglob git'
setopt no_beep

export NVM_DIR="/Users/pwebb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/pwebb/sdkman"
[[ -s "/Users/pwebb/sdkman/bin/sdkman-init.sh" ]] && source "/Users/pwebb/sdkman/bin/sdkman-init.sh"
