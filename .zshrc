# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit

# load git extras completions # TODO consider installing git extras with zinit
source /opt/homebrew/opt/git-extras/share/git-extras/git-extras-completion.zsh

zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

export FZF_DEFAULT_COMMAND='rg --files'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

export EDITOR=nvim

#Aliases
alias c="clear"
alias ll="ls -lahG"
alias gst="git status"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend"
alias gco="git checkout"
alias gl="git pull"
alias gb="git branch"
alias gcob="git checkout -b"
alias undo-commit="git reset --soft HEAD~"
branch() {
  local b
  b="$(
    git for-each-ref --sort=-committerdate --format='%(refname:short)' refs/heads refs/remotes \
      | sed 's#^origin/##' \
      | awk 'NF' \
      | sort -u \
      | fzf --prompt='checkout> ' --height=40% --reverse
  )" || return

  [[ -n "$b" ]] || return
  git checkout "$b"
}
alias branch=branch

eval "$(fzf --zsh)"

# Shell prompt
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

# bun completions
[ -s "/Users/travisnuttall/.bun/_bun" ] && source "/Users/travisnuttall/.bun/_bun"

# claude
popus () {
  claude "$(pbpaste) --- $@"
}

claudeCommit() {
  claude --allowedTools "Bash(git status:*)" "Bash(git diff:*)" "Bash(git log:*)" "Bash(git add:*)" "Bash(git commit:*)" --print "Please stage all changes and write a descriptive commit message"
}
