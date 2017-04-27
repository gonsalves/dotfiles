#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   The Basics\n"

brew_install 'Git' 'git'
brew_install 'Mac App Store' 'mas'
brew_install "Dropbox" "dropbox" "caskroom/cask" "cask"
brew_install "Calibre" "calibre" "caskroom/cask" "cask"
brew_install "MacDown (Markdown Editor" "macdown" "caskroom/cask" "cask"
brew_install "Microsoft Office" "microsoft-office" "caskroom/cask" "cask"
brew_install "nvAlt" "nvalt" "caskroom/cask" "cask"
brew_install "Sublime Text" "sublime-text" "caskroom/cask" "cask"

brew tap caskroom/cask

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Internet\n"

brew_install "Firefox" "firefox" "caskroom/cask" "cask"
brew_install "Chrome" "google-chrome" "caskroom/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication\n"

brew_install "Skype" "skype" "caskroom/cask" "cask"
brew_install "Slack" "slack" "caskroom/cask" "cask"
brew_install "Telegram" "telegram" "caskroom/cask" "cask"
brew_install "WhatsApp Desktop" "whatsapp" "caskroom/cask" "cask"

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Utilities\n"

brew_install "TripMode" "tripmode" "caskroom/cask" "cask"
brew_install "Moom" "moom" "caskroom/cask" "cask"
brew_install "Flux" "flux" "caskroom/cask" "cask"
brew_install "Gihub Desktop" "github-desktop" "caskroom/cask" "cask"
brew_install "Hazel" "hazel" "caskroom/cask" "cask"
brew_install "The Unarchiver" "the-unarchiver" "caskroom/cask" "cask"
brew_install "Matts TraceRoute (mtr)" "mtr"
brew_install "Menu Meters (Yujitach Fork)" "yujitach-menumeters" "caskroom/cask" "cask"

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
brew_install 'FFmpeg' 'ffmpeg'
brew_install 'ImageMagick' 'imagemagick --with-webp'

# Also want to be able to install Craft by Invision

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew cleanup

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -