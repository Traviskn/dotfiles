# My Dotfiles

These dotfiles are intended for use with Mac OSX.
They are most easily managed with [rcm](https://github.com/thoughtbot/rcm).

## Quickstart
- Install the OSX Command Line Tools.
Either download and install [Xcode](https://developer.apple.com/xcode/download/), or run this command:
```shell
xcode-select --install
```

- Install [Homebrew](http://brew.sh/):
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

- Install [git](https://git-scm.com/):
```shell
brew install git
```

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
rcup -x Brewfile
```

- Install dependencies with homebrew
```shell
cd .dotfiles
brew tap Homebrew/bundle
brew bundle
```

### Additional Setup
- Update your system to use the latest Bash version installed by Homebrew.
```shell
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash
```

- Install Node.js with NVM.
```shell
mkdir ~/.nvm
nvm install --lts
```

- Create a default alias so that Node.js can be invoked programatically by other applications.
```shell
nvm alias default lts/*
```

In order for the Vim autocompletion plugin [YouCompleteMe](https://valloric.github.io/YouCompleteMe/) to work, you will need to manually compile it.

- Enter the YouCompleteMe directory and run the install script.
```shell
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer
```

- Enter the tern_for_vim directory and install its dependencies to enable JavaScript autocompletion.
```shell
cd ~/.vim/bundle/tern_for_vim
npm install
```

### Appearance Related
Without the following dependencies your colors/themes/symbols will not appear correctly.

- Install a [patched font](https://github.com/ryanoasis/nerd-fonts).  These fonts included special symbols for the powerline bash prompt, the vim status bar, and the vim nerdtree file explorer.
Visit the link to see a list of all the available fonts.  I use [Sauce Code Pro](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete%20Mono.ttf).

- Install [iTerm2](https://www.iterm2.com/version3.html).
Visit the link to download the latest version.  Check out [this article](http://elweb.co/making-iterm-2-work-with-normal-mac-osx-keyboard-shortcuts/) to enable some common mac keyboard shorcuts from the Terminal.app, like option-delete to delete one word at a time and option-arrow to move one word at a time.

- Install the [Base16](https://chriskempson.github.io/base16/) theme for iTerm2.  You can find a list of all the themes [here](https://github.com/chriskempson/base16-iterm2).  I recommend downloading the zip file of all the themes, extracting it, and double clicking the themes you like.  That will automatically make the color preset available to you in the iTerm2 preferences.  I use the default dark and eighties dark themes most often.

- Configure the iTerm2 Preferences to use the patched font and Base16 theme.  Open iTerm2 and from the top menu bar open iTerm2 > Preferences > Profiles.  Select the Text button and then the Change Font button to pick your patched font.  Next click the Colors button and select your Base16 theme from the Color Presets dropdown menu.

Note: If you don't want to install iTerm2, you can make the default Terminal.app work with the base 16 color scheme by using the Base_16.terminal configuration included in this repo.  Simply double click it to install the config to your terminal.app, and you can use it from your preferences.

### Optional Dependencies
This configuration technically won't break or throw errors without these, but it does assume you have the following installed.

- Install [PostgreSQL](http://postgresapp.com/).

- Install [Android Studio](https://developer.android.com/studio/index.html).
Follow the linked instructions to get the Android SDK and other tools.

