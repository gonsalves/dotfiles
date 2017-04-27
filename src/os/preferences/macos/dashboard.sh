#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Dashboard\n\n"

execute "defaults write com.apple.dashboard mcx-disabled -bool true" \
    "Disable Dashboard"

# `killall Dashboard` doesn't actually do anything. To apply the
# changes for `Dashboard`, `killall Dock` is enough as `Dock` is
# `Dashboard`'s parent process.

killall "Dock" &> /dev/null


# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

# Top left screen corner → Mission Control
execute "defaults write com.apple.dock wvous-tl-corner -int 2 && \
		 defaults write com.apple.dock wvous-tl-modifier -int 10" \
	"Top Left: Mission Control"

# Top right screen corner → Nothing
execute "defaults write com.apple.dock wvous-tr-corner -int 0 && \
		 defaults write com.apple.dock wvous-tr-modifier -int 0" \
	"Top Right: Nothing"

# Bottom left screen corner → Show Desktop
execute "defaults write com.apple.dock wvous-bl-corner -int 4 && \
		 defaults write com.apple.dock wvous-bl-modifier -int 0" \
	"Bottom Left: Show Desktop"