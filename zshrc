# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="gozilla"
export CASE_SENSITIVE="true"
plugins=(ant brew compleat cp dirpersist gem git gradle grails history mvn npm osx redis-cli rsync ruby rvm scala screen shh-agent sublime tmux)
source $ZSH/oh-my-zsh.sh

# zsh specifics
alias git='noglob git'
setopt no_beep
