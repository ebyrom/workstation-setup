echo
echo "Set Bash as default Shell"
chsh -s /bin/bash

echo
echo "Configuring iTerm..."
cp ../../files/com.googlecode.iterm2.plist-eb1-material ~/Library/Preferences/com.googlecode.iterm2.plist

echo
echo "Configure ShiftIt to select 1/3 screen width, 1/2 screen width and 2/3 screen width..."
echo "`defaults write org.shiftitapp.ShiftIt multipleActionsCycleWindowSizes YES`"
