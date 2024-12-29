export EDITOR='subl'

# Vars
export ANT_HOME=~/tools/apache-ant-current
export M2_HOME=~/tools/apache-maven-current
export MAVEN_OPTS=-Xmx2048m
export PAGER="less"

# Paths
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:~/bin
export PATH=$PATH:~/scripts

# Aliases
alias ls='ls -G -h -p '
alias ll='ls -l -G -h -p '

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
