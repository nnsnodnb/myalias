### Prompt text

PS1="\h:\[\033[1;31m\]\W\[\033[0m\] \u $ "

### Utilities command

alias ll='ls -la'
alias l='ls -al'
alias cl='clear'
alias md='mkdir'

### Git command

alias pull='git pull'
alias push='git push'
alias st='git status'
alias commit='git commit -m'
alias amend='git commit --amend'
alias add='echo "Branch -> `git rev-parse --abbrev-ref HEAD`" && git add'
alias remote='git remote'
alias diff='git diff'
alias clone='git clone'
alias checkout='git checkout'
alias branch='git branch'
alias merge='git merge'
alias log='git log'
alias config='git config'
alias fetch='git fetch'
alias init='git init'
alias show='git show'
alias reset='git reset'
alias tag='git tag'
alias rebase='git rebase'
alias revert='git revert'
alias stash='git stash'
alias gelse='git blame-someone-else'

### Node.js

export NVM_DIR="/Users/oka/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use 5.8.0
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

### VirtualEnv

alias act='. bin/activate'
alias deact='deactivate'

### gitignore.io API Command Line Tool

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
