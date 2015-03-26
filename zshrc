# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="gozilla"
export CASE_SENSITIVE="true"
plugins=(ant brew compleat cp docker dirpersist gem git gradle grails history mvn npm osx redis-cli rsync ruby rvm scala screen shh-agent sublime tmux)
source $ZSH/oh-my-zsh.sh

# zsh specifics
alias git='noglob git'
setopt no_beep

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export NVM_DIR="/Users/pwebb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
