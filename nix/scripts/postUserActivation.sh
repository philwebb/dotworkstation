#!/bin/bash

if [[ $(/usr/bin/id -u) -eq 0 ]]; then
    echo "Should not be root"
    exit
fi

username="$1"
if [[ -z "${username}" ]]; then
    echo "First arg should be username"
    exit
fi

echo "Applying user settings..."

# Install oh-my-zsh if missing
[ ! -d "/Users/${username}/.oh-my-zsh" ] && git clone https://github.com/ohmyzsh/ohmyzsh.git /Users/${username}/.oh-my-zsh

# Install SDKMAN! if missing
if [ ! -d "/Users/${username}/sdkman" ]; then
export SDKMAN_DIR="/Users/${username}/sdkman" && curl -s "https://get.sdkman.io?rcupdate=false" | bash
[ -f "/Users/${username}/sdkman/etc/config" ] && rm "/Users/${username}/sdkman/etc/config"
fi

# Install Eclipse User Setup
if [ -f "/Users/${username}/.eclipse/org.eclipse.oomph.setup/setups/user.setup" ]; then
rm "/Users/${username}/.eclipse/org.eclipse.oomph.setup/setups/user.setup"
fi
ln -s "/Users/${username}/.workstation/eclipse/user.setup" /Users/${username}/.eclipse/org.eclipse.oomph.setup/setups/user.setup

# Install subl command line
mkdir -p ~/bin
ln -f -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# Use stow to create symlinks
pushd ~/.workstation/home && stow . && popd

# Show various folders
chflags nohidden ~/Library

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
General -bool true \
OpenWith -bool true \
Privileges -bool true

# Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Change indexing order and disable some file types
defaults write com.apple.spotlight orderedItems -array \
'{"enabled" = 1;"name" = "APPLICATIONS";}' \
'{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
'{"enabled" = 1;"name" = "DIRECTORIES";}' \
'{"enabled" = 1;"name" = "PDF";}' \
'{"enabled" = 1;"name" = "FONTS";}' \
'{"enabled" = 0;"name" = "DOCUMENTS";}' \
'{"enabled" = 0;"name" = "MESSAGES";}' \
'{"enabled" = 0;"name" = "CONTACT";}' \
'{"enabled" = 0;"name" = "EVENT_TODO";}' \
'{"enabled" = 0;"name" = "IMAGES";}' \
'{"enabled" = 0;"name" = "BOOKMARKS";}' \
'{"enabled" = 0;"name" = "MUSIC";}' \
'{"enabled" = 0;"name" = "MOVIES";}' \
'{"enabled" = 0;"name" = "PRESENTATIONS";}' \
'{"enabled" = 0;"name" = "SPREADSHEETS";}' \
'{"enabled" = 0;"name" = "SOURCE";}' \
'{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
'{"enabled" = 0;"name" = "MENU_OTHER";}' \
'{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
'{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
'{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
'{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'

# Install all the Java
sh /Users/${username}/scripts/install-all-javas.sh

# Apply settings to save a restart
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u
killall SystemUIServer

# Enable subpixel antialiasing font rendering on non-Apple LCDs
defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO

# Cleanup
rm ~/Library/Application\ Support/Rectangle/RectangleConfig2*.json &> /dev/null
killall rectangle && open /Applications/Rectangle.app
