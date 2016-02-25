## dotfiles

### setting up a new macbook:

- encrypted disk
- logged in with apple id (but separated passwords afterwards)
- changed screen resolution
- settings -> keyboard -> shortcuts -> keyboard -> Move focus to next window -> CMD+<
- settings -> screensaver -> Message -> Options -> Message: " "
- settings -> sound -> play feedback if volume is changed

### applications

- install xcode, clear, evernote, pixelmator, 1password from app store
- `sudo xcodebuild -license`
- install chrome (cask version does not work with 1password)
- install Postgres.app (not with cask, needs to be in Application folder) and Postgres.app with PostGIS 2.1.8 is needed for ff project...
- install oh-my-zsh
- link config of this repo `rm ~/.zshrc && ln -s ~/projects/dotfiles/.zshrc ~/.zshrc`
- install brew (asked for xcode on the way)
- `brew install git postgresql postgis mysql node pkg-config graphviz cairo pango gdk-pixbuf libxml2 libxslt libffi gettext elexir`
- `brew link gettext --force`
- run `mysql_secure_installation` and set password to 1234 (no password leads to problems)
- `npm install -g gulp bower eslint`
- `sudo gem install scss_lint`

1password -> sync with icloud
1password -> deactivate 'submit logins'

```
git config --global user.name "Silvan Spross"
git config --global user.email "silvan.spross@gmail.com"
git config --global push.default simple
```

- generated ssh key https://help.github.com/articles/generating-a-new-ssh-key/
- added ssh key to agent https://help.github.com/articles/adding-a-new-ssh-key-to-the-ssh-agent/
- added pub key to github profile
- tap brew cask `brew cask` and `brew tap caskroom/versions` to get newer version like sublime-text3

```
brew cask install sublime-text3
brew cask install google-chrome
brew cask install iterm2
brew cask install dropbox
brew cask install google-drive
brew cask install transmission
brew cask install spectacle
brew cask install postico
brew cask install slack
brew cask install bitbar
brew cask install flux
brew cask install istat-menus
brew cask install limechat
brew cask install recordit
brew cask install spotify
brew cask install sonos
brew cask install teamviewer
brew cask install the-unarchiver
brew cask install virtualbox
brew cask install vlc
```

iTerm -> Preferences -> Profiles -> Default -> Working Directory -> Advanced Configuration -> For new split panes: Reuse previous session's directory
iTerm -> Preferences -> Profiles -> Default -> Terminal -> Unlimited Scrollback

iStat -> Import Settings

Flux -> Disable for VLC...

`./osx.sh`

sublime install packages

- Oceanic Next Color Scheme
- MarkdownLight
- Djaneiro
- GitGutter
- SideBarEnhancements
- Anaconda
- SASS
- Babel
- SublimeLinter
- SublimeLinter-contrib-eslint
- SublimeLinter-scss-lint

Anaconda User Settings:

```
{
    "pep8_ignore": ["E501", "W292"]
}
```

Sublime Key Bindings User

```
[
    { "keys": ["ctrl+shift+r"], "command": "reveal_in_side_bar"}
]
```

2 Spaces Tab Size for JS and JSX Files, edit `/Users/sspross/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/JavaScript\ \(Babel\).sublime-settings`

```
{
    "tab_size": 2,
    "extensions":
    [
        "jsx",
        "js"
    ]
}
```

`ln -s ~/projects/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings`

`brew install python`
`pip install virtualenv requests`
