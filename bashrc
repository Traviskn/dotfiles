### Custom commands
# Show hidden dot files, directories, etc
alias show="defaults write com.apple.finder AppleShowAllFiles YES"
# Hide files that were shown with the above command
alias hide="defaults write com.apple.finder AppleShowAllFiles NO"
# Remember to option right-click finder and relaunch after using show/hide

# List the current directory with some better info and formatting
alias ll="ls -lahG"

alias www="python -m SimpleHTTPServer"

# Git shortcuts
alias gst="git status"
alias glg="git log"
alias lgb="git log --graph --pretty=oneline --abbrev-commit"
alias ga="git add"
alias gc="git commit"
alias gcl="git clone"
alias gp="git push"
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
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

### History customizations
export HISTSIZE=10000
export HISTIMEFORMAT='%b %d %I:%M %p'
export HISTCONTROL=ignoreboth
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"

### Python
export PATH=~/Library/Python/2.7/bin:$PATH

### Virtual Environment Wrapper
PROJECT_HOME=~/Dev/
source /usr/local/bin/virtualenvwrapper.sh
alias mkp="mkproject -p /usr/local/bin/python3"

### Node JS
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

### Ruby
eval "$(rbenv init -)"

### Postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin

### Golang
export GOPATH=~/Dev/go
export PATH=$PATH:$GOPATH/bin

### Android
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

### Homebrew
export HOMEBREW_NO_EMOJI=1

### Powerline
# Only source the powerline script if it is installed
powerline_path=$(python -c 'import pkgutil; print pkgutil.get_loader("powerline").filename' 2>/dev/null)
if [[ "$powerline_path" != ""  ]]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source ${powerline_path}/bindings/bash/powerline.sh
fi

