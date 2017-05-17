#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

brew tap caskroom/fonts

print_in_purple "\n • Fonts\n\n"

print_in_purple "\n   Sans Serif\n"

brew_install "Roboto" "font-roboto" "caskroom/fonts" "cask"
brew_install "Roboto Condensed" "font-roboto-condensed" "caskroom/fonts" "cask"
brew_install "Roboto Slab" "font-roboto-slab" "caskroom/fonts" "cask"
brew_install "Open Sans" "font-open-sans" "caskroom/fonts" "cask"
brew_install "Open Sans Condensed" "font-open-sans-condensed" "caskroom/fonts" "cask"
brew_install "Ubuntu" "font-ubuntu" "caskroom/fonts" "cask"
brew_install "Montserrat" "font-montserrat" "caskroom/fonts" "cask"

print_in_purple "\n   Serif\n"
brew_install "Alegreya" "font-alegreya" "caskroom/fonts" "cask"

print_in_purple "\n   Display\n"
brew_install "Playfair Display" "font-playfair-display" "caskroom/fonts" "cask"
brew_install "Playfair Display SC" "font-playfair-display-sc" "caskroom/fonts" "cask"
brew_install "Bebas Neue" "font-bebas-neue" "caskroom/fonts" "cask"