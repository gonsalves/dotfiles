#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   General Tweaks\n\n"


execute "defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true && \
         defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true" \
   "Avoid creating '.DS_Store' files on network or USB volumes"


# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   First Run\n\n"

# Start SizeUp at login
execute "defaults write com.irradiatedsoftware.SizeUp StartAtLogin -bool true" \
	"Start Dropbox for the first time"