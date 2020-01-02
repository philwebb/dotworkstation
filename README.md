# Helpful macOS setup

## Installations

### xcode
Install from the App Store.

### Homebrew

https://brew.sh/

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
```

### zsh / oh-my-zsh

https://github.com/robbyrussell/oh-my-zsh

```
$ brew install zsh
$ https://github.com/robbyrussell/oh-my-zsh
$ curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
$ chsh -s /bin/zsh
```

### dotfiles / settings

```
./_setupdotfiles.zsh
./_setuposx.sh
```

### Key Remapping
Remap caps-lock to command-alt-control-shift
* [Karabiner] https://pqrs.org/osx/karabiner/
* [Better Touch Tool](http://www.boastr.net/)

Install Karabiner and under "complex modifications" add `caps_lock to command+control+option+shift`. 
Import `better-touch-tool-default.json` into better touch tool to handle the keys.


### Misc
* [Java](http://www.oracle.com/technetwork/java/javase/downloads/)
* [Skype](http://www.skype.com/en/)
* [Thunderbird](http://www.mozilla.org/en-US/thunderbird/)
* [Chrome](https://www.google.com/intl/en/chrome/browser/)
* [GitX](http://rowanj.github.io/gitx/)


```
brew install git
brew install tmux
brew install tree
```

### Firefox
http://www.mozilla.org/en-US/firefox/new/
Add ~/scripts/firefox-profiles to the dock for demos
Install add-ons
- JSONView
- NoScript
- Tampermonkey
- uBlock Origin
- YouTube Downloader Lite



### Sublime Text 2
http://www.sublimetext.com/
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl

### Secrets Preferences Pane
http://secrets.blacktree.com/

## Configure

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
