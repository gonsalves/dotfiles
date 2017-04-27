#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Apps from the Mac App Store\n"

mas signin gonsalves.r@gmail.com

# Fantastical
mas install 975937182
printf "\n"
# 1Password
mas install 443987910
printf "\n"
# Soulver
mas install 413965349
printf "\n"
# Omnigraffle
mas install 711830901
printf "\n"
# Time Out (2.2.1)
mas install 402592703
printf "\n"
# Omnifocus
mas install 867299399
printf "\n"
# Keynote
mas install 409183694
printf "\n"
# Pages
mas install 409201541
printf "\n"
# Numbers
mas install 409203825
printf "\n"
# Transmit
mas install 403388562

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Quick upgrade check...\n"

mas upgrade
