export PATH=$PATH:/Users/travisnuttall/.local/bin

# Android
export PATH=$PATH:/Applications/Android\ Studio.app/Contents/MacOS
export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Flutter
export PATH=$PATH:$HOME/.flutter/bin

# Bun
export BUN_INSTALL=$HOME/.bun
export PATH=$BUN_INSTALL/bin:$PATH

SHELL_SESSIONS_DISABLE=1

export SENTRY_DISABLE_AUTO_UPLOAD=true
