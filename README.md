## instructions & dotfiles

### setting up a new macbook

- encrypted disk
- logged in with apple id (but separated password for local user account)

#### settings (more in os x tweaks later...)

- settings -> screensaver -> Message -> Options -> Message: "🦊"
- settings -> hotcorners -> CMD + left-down -> screensaver
- settings -> hotcorners -> CMD + right-top -> desktop
- settings -> sharing -> change computer name
- settings -> keyboard -> shortcuts -> keyboard -> Move focus to next window -> CMD+<

### applications

#### app store

- 1password
- xcode
- pixelmator

#### manual

- install dropbox
- rectangle
- postgres.app
- tableplus
- visual studio
- istats
- google drive
- slack
- iTerm

#### iTerm

- Preferences -> Profiles -> Default -> Terminal -> Unlimited Scrollback

#### zsh

- install oh-my-zsh
- link to this repo: `rm ~/.zshrc && ln -s ~/projects/dotfiles/.zshrc ~/.zshrc`
- adjust `.zshrc`, install brew etc.

#### VScode

- link to this repo: `rm ~/Library/Application\ Support/Code/User/settings.json && ln -s ~/projects/dotfiles/settings.json ~/Library/Application\ Support/Code/User/settings.json`

#### Apple Mail

- View -> Organise by Conversation
- View -> Sort by -> Date and newest message on top
- Preferences -> Viewing -> Show most recent message at the top
- Preferences -> Privacy -> Protect Mail Activity (route image loading through apple)

#### git

```bash
git config --global user.name "Silvan Spross"
git config --global user.email "silvan.spross@gmail.com"
git config --global pull.rebase false
git config --global push.default simple
```

#### Activate UseKeychain for ssh key (to not always enter passphrase)

Create `~/.ssh/config` with:

```
Host *
    UseKeychain yes
```

### OS X tweaks (from mathiasbynens/dotfiles)

```bash
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 25

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo "Done. Note that some of these changes require a logout/restart to take effect."
```
