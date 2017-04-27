#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Apps from the Mac App Store\n"

mas signin gonsalves.r@gmail.com

# Fantastical
mas install 975937182
# 1Password
mas install 443987910
# Soulver
mas install 413965349
# Omnigraffle
mas install 711830901
# Time Out (2.2.1)
mas install 402592703
# Omnifocus
mas install 867299399
# Keynote
mas install 409183694
# Pages
mas install 409201541
# Numbers
mas install 409203825
# Transmit
mas install 403388562

printf "\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Quick upgrade check...\n"

mas upgrade
