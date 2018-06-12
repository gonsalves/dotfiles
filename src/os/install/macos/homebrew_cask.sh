#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   The Basics\n"

brew tap caskroom/cask

brew_install 'Git' 'git'
brew_install 'Mac App Store' 'mas'
brew_install "Dropbox" "dropbox" "caskroom/cask" "cask"
brew_install "Sublime Text" "sublime-text" "caskroom/cask" "cask"
brew_install "Alfred" "alfred" "caskroom/cask" "cask"

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Internet\n"

brew_install "Mozilla Firefox" "firefox" "caskroom/cask" "cask"
brew_install "Google Chrome" "google-chrome" "caskroom/cask" "cask"

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication\n"

brew_install "Skype" "skype" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "Telegram" "telegram" "caskroom/cask" "cask"
brew_install "WhatsApp Desktop" "whatsapp" "caskroom/cask" "cask"
brew_install "Google Hangouts" "google-hangouts" "caskroom/cask" "cask"

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Utilities\n"

brew_install "TripMode" "tripmode" "caskroom/cask" "cask"
brew_install "Moom" "moom" "caskroom/cask" "cask"
brew_install "Flux" "flux" "caskroom/cask" "cask"
brew_install "The Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "iStat Menus" "istat-menus" "caskroom/cask" "cask"
brew_install "VideoLAN Controller" "vlc" "caskroom/cask" "cask"
brew_install "Unifi Controller" "ubiquiti-unifi-controller" "caskroom/cask-drivers" "cask"
brew_install "Github Desktop" "github" "caskroom/cask" "cask"
brew_install "Matt's TraceRoute (mtr)" "mtr"
    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//')
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr

# brew cask install npod

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Design Tools\n\n"

brew_install "Sketch" "sketch" "caskroom/cask" "cask"
brew_install "Zeplin" "zeplin" "caskroom/cask" "cask"
brew_install "Icon Jar" "iconjar" "caskroom/cask" "cask"
brew_install "Monotype Sky Fonts" "skyfonts" "caskroom/cask" "cask"
brew_install 'FFmpeg' 'ffmpeg'
brew_install 'ImageMagick' 'imagemagick --with-webp'

# Also want to be able to install Craft by Invision

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Business Software\n\n"

brew_install "Quickbooks Online" "quickbooks-online" "caskroom/cask" "cask"
brew_install "Microsoft Office" "microsoft-office" "caskroom/cask" "cask"
brew_install "Typora (Markdown Editor" "typora" "caskroom/cask" "cask"
brew_install "Basecamp" "basecamp" "caskroom/cask" "cask"


printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew cleanup

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -