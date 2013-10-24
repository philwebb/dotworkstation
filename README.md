# What is this

## Installations

### xcode
Install from the App Store.

### Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
brew doctor

### zsh / oh-my-zsh
brew install zsh
https://github.com/robbyrussell/oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

### dotfiles / settings
./_setupdotfiles.zsh
./_setuposx.sh

### Key Remapping
Remap caps-lock to command-alt-control-shift
http://www.leancrew.com/all-this/2012/11/shift-control-option-command-on-caps-lock/
https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en
https://pqrs.org/macosx/keyremap4macbook/index.html.en

Install [Slate](https://github.com/jigish/slate)

### Misc
[Better Touch Tool](http://www.boastr.net/)
[Java](http://www.oracle.com/technetwork/java/javase/downloads/)
[Flash](get.adobe.com/flashplayer/)
[Skype](http://www.skype.com/en/)
[HipChat](https://www.hipchat.com/downloads#mac)
[Thunderbird](http://www.mozilla.org/en-US/thunderbird/)
[Chrome](https://www.google.com/intl/en/chrome/browser/)
[GitX](http://rowanj.github.io/gitx/)


```
brew install git
brew install tmux
brew install tree
```

### Firefox
http://www.mozilla.org/en-US/firefox/new/
Add ~/scripts/firefox-profiles to the dock for demos
Add extensions
- Firebug
- JSONView
- Greasemonkey

### Eclipse/STS
http://spring.io/tools/sts/all

https://github.com/philwebb/eclipse-theme-sts



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
