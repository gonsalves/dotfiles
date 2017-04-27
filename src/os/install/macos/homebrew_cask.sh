#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   The Basics\n"

brew install caskroom/cask/brew-cask
brew install mas

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Internet\n"

brew_install "Firefox" "firefox" "caskroom/cask" "cask"
brew_install "Chrome" "google-chrome" "caskroom/cask" "cask"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Communication\n"

brew cask install skype
brew cask install slack
brew cask install telegram
brew cask install whatsapp

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Utilities\n"

brew cask install tripmode
brew cask install moom
brew cask install flux
brew cask install github-desktop
brew cask install hazel
brew cask install menumeters
brew cask install the-unarchiver
brew install mtr
    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//')
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Design Tools\n\n"

brew cask install sketch
brew cask install zeplin
brew cask install iconjar
# Also want to be able to install Craft by Invision

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   The Rest\n\n"

brew cask install dropbox
brew cask install calibre
brew cask install macdown
brew cask install microsoft-office
# brew cask install npod
brew cask install nvalt
brew cask install soulver
brew cask install sublime-text

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew cleanup

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -