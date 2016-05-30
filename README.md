# My Dotfiles

These dotfiles are intended for use with Mac OSX.
They are most easily managed with [rcm](https://github.com/thoughtbot/rcm).

## Pre-Requisites
- Install [Homebrew](http://brew.sh/):
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- Install [git](https://git-scm.com/):
```shell
brew install git
```

- Install the OSX Command Line Tools.
Either download and install [Xcode](https://developer.apple.com/xcode/download/), or run this command:
```shell
xcode-select --install
```

- Upgrade bash:
```shell
brew install bash
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash
```

- Upgrade [Vim](http://macvim-dev.github.io/macvim/):
```shell
brew install macvim --override-system-vim
```

### Appearance Related
Without the following dependencies your colors/themes/symbols will not appear correctly.

- Install [iTerm2](https://www.iterm2.com/version3.html).
Visit the link to download the latest version.

- Install a [patched font](https://github.com/ryanoasis/nerd-fonts).
Visit the link to see a list of all the available fonts.  I prefer [Sauce Code Pro](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf).


- Install [nvm](https://github.com/creationix/nvm):
```shell
brew install nvm
```

- Install [rbenv](https://github.com/rbenv/rbenv):
```shell
brew install rbenv
```

### Optional Pre-Requisites
This configuration technically won't break or throw errors without these, but it does assume you have the following installed.

- Install [Golang](https://golang.org/).
These configs assume your GOPATH is at ~/Dev/go.
```shell
brew install go
```

- Install [PostgreSQL](http://postgresapp.com/).
Visit the link and scroll down a bit to get version 9.4

- Install [Android Studio](https://developer.android.com/studio/index.html).
Visit the link and follow the download instructions.  This should give you the Android SDK and other tools.

## Dotfiles Installation
Now that you have the pre-requisites set up you are ready to install the actual dotfiles!
- Install [rcm](https://github.com/thoughtbot/rcm):
```shell
brew install rcm
```
- Clone this repo into your home directory:
```shell
git clone https://github.com/Traviskn/dotfiles.git ~/.dotfiles
```
- Run the rcup command to symlink all the dotfiles and run the hook scripts:
```shell
rcup
```

The hook script will install vim plugins and my custom [bash-powerline](https://github.com/traviskn/bash-powerline) prompt for you.

