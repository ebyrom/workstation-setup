echo
echo 'Customizing OS X configurations'

# set menu clock
# see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
echo
echo "Set Menu Clock to show seconds"
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  h:mm:ss a'
killall SystemUIServer

# set finder to display full path in title bar
echo
echo "Set finder to display full path in title bar..."
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# fast key repeat rate, requires reboot to take effect
defaults write ~/Library/Preferences/.GlobalPreferences KeyRepeat -int 1
defaults write ~/Library/Preferences/.GlobalPreferences InitialKeyRepeat -int 15