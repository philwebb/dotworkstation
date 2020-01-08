## Phil's MacBook setup

Provides a quick way to get a fresh MacBook setup the way I like it.


## Installations

### Firefox

```
cd ~/Downloads
curl -L "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US" > firefox.dmg
open ./firefox.dmg
```



### 1Password

Install DropBox first from https://dropbox.com/downloading then download 1Password from https://1password.com/downloads/mac (don't use use the app store version)




### Xcode

Install from the App Store.



### Homebrew

https://brew.sh/

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```

Install:

```
brew install coreutils curl tree watch wget tmux grep git
brew install imagemagick dive ruby asciidoctor
```

### zsh / oh-my-zsh

https://github.com/robbyrussell/oh-my-zsh

```
brew install zsh
https://github.com/robbyrussell/oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh
```


### .workstation

Clone this repo:

```
cd ~
git clone https://github.com/philwebb/dotworkstation .workstation
```

Grant "full disk access" to "terminal" in the "Security & Privacy" system preferences.

```
cd ~/.workstation
./_setupmacos.sh
./_setupdotfiles.zsh
```



### Key Remapping
Remap caps-lock to command-alt-control-shift
* [Karabiner] (https://pqrs.org/osx/karabiner/)
* [Better Touch Tool](http://www.folivora.ai/)

Install Karabiner and under "complex modifications" add `caps_lock to command+control+option+shift`. 
Import `better-touch-tool-default.json` into better touch tool to handle the keys (cmd + shift + `.` to show hidden folders).



### Additional Firefox
http://www.mozilla.org/en-US/firefox/new/
Add ~/scripts/firefox-profiles to the dock for demos
Install add-ons
- JSONView
- NoScript
- Tampermonkey
- uBlock Origin
- YouTube Downloader Lite



### Java
Install OpenJDK from https://github.com/AdoptOpenJDK
Also install SDKMan from https://sdkman.io/

```
sdk install java 11.0.3.hs-adpt
sdk install java 13.0.1.hs-adpt
sdk install java 8.0.232.hs-adpt
```


### App Store

Useful apps from the app store:

* Keynote
* Slack
* Tweetdeck
* Lastpass


### Misc

Useful apps to download

* [Chrome](https://www.google.com/intl/en/chrome/browser/)
* [Thunderbird](http://www.mozilla.org/en-US/thunderbird/)
* [GitX](http://rowanj.github.io/gitx/)
* [Skype](http://www.skype.com/en/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Google Drive](https://www.google.com/drive/)
* [Docker](https://docs.docker.com/docker-for-mac/install)
* [Atom](https://atom.io/)
* [VirtualBox](https://www.virtualbox.org/)
* [Zoom](https://zoom.us/download)
* [VLC](https://www.videolan.org/vlc/)
* [IINA](https://iina.io/)
* [Sublime Text](https://www.sublimetext.com/)
* [Wireshark](https://www.wireshark.org/)
* [Disk Inventory X](https://gitlab.com/tderlien/disk-inventory-x)



## Extra Configuration

### Sublime

```
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

### Google Account
Add account to mail.app
System Preferences -> Internet Accounts -> enable all services

Setup script to ensure trash is moved to 'all mail'

```
$ cd /Library/LaunchAgents
$ ln -s ~/scripts/applescript/move-trash-to-all-mail.plist
```

## Credits

https://github.com/matthewmccullough/dotfiles
https://github.com/mathiasbynens/dotfiles
