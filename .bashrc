### PyEnv

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

### Prompt text

PS1="\h:\[\033[1;31m\]\w\[\033[0m\] \u\n$ "

### Utilities command

alias ll='ls -la'
alias l='ls -al'
alias cl='clear'
alias md='mkdir -p'
alias chownme='chown nnsnodnb:staff'
alias json='jq'
alias reload='source ~/.bash_profile'
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"

### Git command

export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight
alias pull='git pull'
alias push='git push -u origin `git rev-parse --abbrev-ref HEAD`'
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
alias fetch='git fetch --all -p'
alias ginit='git init'
alias show='git show'
alias reset='git reset'
alias hard='git reset --hard'
alias tag='git tag'
alias rebase='git rebase'
alias revert='git revert'
alias stash='git stash'
alias gelse='git blame-someone-else'
alias cherry-pick='git cherry-pick'
function gnow() { git rev-parse --abbrev-ref HEAD | tr -d "\n" | pbcopy; }
function bnow() { git rev-parse --abbrev-ref HEAD; }

### VirtualEnv

alias act='. bin/activate'
alias deact='deactivate'
alias venv='. venv/bin/activate'

### gitignore.io API Command Line Tool

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

### Xcode project's .gitignore

function gixcode() { curl -L -s https://raw.githubusercontent.com/nnsnodnb/gitignore/master/xcode_osx; }

### CocoaPods

alias pini='bundle exec pod init'
alias pins='bundle exec pod install'
alias pud='bundle exec pod update'

### rbenv

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### GoEnv

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

### Bundler

alias binit='bundle init'
alias bins='bundle install'

### RSA

ssh-add ~/.ssh/id_rsa_github > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa_zeus > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa_macbook > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa_azure > /dev/null 2>&1
ssh-add ~/.ssh/id_rsa_bitbucket > /dev/null 2>&1
ssh-add ~/.ssh/aws_ubuntu.pem > /dev/null 2>&1

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
