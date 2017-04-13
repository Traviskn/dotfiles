### To Upgrade Bash
# brew install bash
# sudo -s # <- may not be required
# echo /usr/local/bin/bash >> /etc/shells
# chsh -s /usr/local/bin/bash
export SHELL="/usr/local/bin/bash"

### Editor
export EDITOR="vim"

### Custom commands
# Show hidden dot files, directories, etc
alias show="defaults write com.apple.finder AppleShowAllFiles YES"
# Hide files that were shown with the above command
alias hide="defaults write com.apple.finder AppleShowAllFiles NO"
# Remember to option right-click finder and relaunch after using show/hide

# List the current directory with some better info and formatting
alias ll="ls -lahG"

# Run a simple web server
alias www="python -m SimpleHTTPServer"

# Git shortcuts
alias gst="git status"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend"
alias gcl="git clone"
alias gp="git push"
alias gpr="git push origin HEAD:refs/for/master"
alias gco="git checkout"
alias gl="git pull"
alias glr="git pull --rebase"
alias gb="git branch"
alias gcob="git checkout -b"
alias grb="git rebase"
alias gcp="git cherry-pick"
alias undo-commit="git reset --soft HEAD~"

### Color customizations
export CLICOLOR=1
export GREP_COLOR="34;47"
export GREP_OPTIONS="--color=auto"

### History customizations
export HISTSIZE=10000
export HISTIMEFORMAT='%b %d %I:%M %p'
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:cd:pwd:exit:df:ls:ls -la:ll"

### Python
export PATH=~/Library/Python/2.7/bin:$PATH

### Virtual Environment Wrapper
#PROJECT_HOME=~/Dev/
#source /usr/local/bin/virtualenvwrapper.sh
#alias mkp="mkproject -p /usr/local/bin/python3"

### Node JS
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

### Ruby
eval "$(rbenv init -)"
DISABLE_SPRING=1

### Postgres
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

### Golang
export GOPATH=~/Dev/go
export PATH=$PATH:$GOPATH/bin

### Haskell
export PATH=$PATH:/Library/Haskell/bin

### Android
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

### Homebrew
export HOMEBREW_NO_EMOJI=1

### Powerline Prompt
export USE_POWERLINE_FONTS=1
source ~/bash-powerline/bash-powerline.sh
