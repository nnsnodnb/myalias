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
alias reload='source ~/.bashrc'

### SSH

alias nnsnodnb@nnsnodnb.moe='-l nnsnodnb -i ~/.ssh/id_rsa_raspi nnsnodnb.moe'

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
alias fetch='git fetch --all'
alias ginit='git init'
alias show='git show'
alias reset='git reset'
alias tag='git tag'
alias rebase='git rebase'
alias revert='git revert'
alias stash='git stash'
alias gelse='git blame-someone-else'
#alias gnow='bnow | tr -d "\n" | pbcopy'
function gnow() { git rev-parse --abbrev-ref HEAD | tr -d "\n" | pbcopy; }
#alias bnow='git rev-parse --abbrev-ref HEAD'
function bnow() { git rev-parse --abbrev-ref HEAD; }
function git_sdt() {
	git config --local user.name y.oka;
	git config --local user.email y.oka@smartdt.jp;
}
function git_nnsnodnb() {
	git config --local user.name nnsnodnb;
	git config --local user.email ahr63_gej@me.com;
}

### VirtualEnv

alias act='. bin/activate'
alias deact='deactivate'

### gitignore.io API Command Line Tool

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

### Xcode project's .gitignore

function gixcode() { curl -L -s https://gist.githubusercontent.com/nnsnodnb/37b29107bd525fc4f83adbca2ab75a8b/raw/.gitignore; }

### CocoaPods

alias pini='bundle exec pod init'
alias pins='bundle exec pod install'
alias pud='bundle exec pod update'

### Bundler

alias binit='bundle init'
alias bins='bundle install'

### Swiftenv 
export PATH="/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:$PATH"
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"

### rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

### NodeJS
export NVM_DIR="/Users/nnsnodnb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

### Custom Synx
function cus_synx() {
    if [ `echo $1 | grep '/'` ] ; then
        project_name=( `echo $1 | tr -d '/'` );
        synx $1${project_name}.xcodeproj/;
    else
        synx $1/$1.xcodeproj/
    fi
}
