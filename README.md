## Phil's MacBook setup

Provides a quick way to get a fresh MacBook setup the way I like it.


## Installations

### Firefox

```
cd ~/Downloads
curl -L "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx&lang=en-US" > firefox.dmg
open ./firefox.dmg
```

or https://www.mozilla.org/en-US/firefox/new/



### 1Password
Install 1Password from https://1password.com




### Xcode
Install from the App Store.



### Homebrew

https://brew.sh/

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor
```

Install:

```
brew install coreutils curl tree watch wget tmux grep git jq python httpie
brew install imagemagick dive ruby asciidoctor
```



### zsh / oh-my-zsh

https://ohmyz.sh/#install

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
* [Karabiner Elements](https://karabiner-elements.pqrs.org/)
* [Better Touch Tool](http://www.folivora.ai/) or [Rectangle](https://rectangleapp.com/)

Install Karabiner and under "complex modifications" add `caps_lock to command+control+option+shift`. 

Import `better-touch-tool-default.json` into better touch tool to handle the keys (cmd + shift + `.` to show hidden folders).

or use https://rectangleapp.com/ and import RectangleCOnfig.json




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
Install SDKMan from https://sdkman.io/

```
for v in $(sdk list java | grep -e '-librca' | grep -v 'fx-' | grep -v -e '\$' | cut -d "|" -f 6); do sdk install java $v; done
```


### App Store
Useful apps from the app store:

* Keynote
* Slack
* Lastpass
* Microsoft Remote Desktop



### Misc

Useful apps to download

* [Chrome](https://www.google.com/intl/en/chrome/browser/)
* [Thunderbird](http://www.mozilla.org/en-US/thunderbird/)
* [GitX](https://github.com/gitx/gitx)
* [Skype](http://www.skype.com/en/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Google Drive](https://www.google.com/drive/download/)
* [Docker](https://www.docker.com/products/docker-desktop/)
* [Zoom](https://zoom.us/download)
* [MS Teams](https://www.microsoft.com/en-us/microsoft-teams/log-in)
* [VLC](https://www.videolan.org/vlc/)
* [IINA](https://iina.io/)
* [Sublime Text](https://www.sublimetext.com/)
* [Wireshark](https://www.wireshark.org/)
* [Hidden Bar](https://github.com/dwarvesf/hidden)
* [Caffeine](https://caffeine.en.softonic.com/mac)
* [Postman](https://www.postman.com/downloads/)
* [Skype](https://www.skype.com/en/get-skype/)
* [TinkerTool](http://www.bresink.com/osx/0TinkerTool/download.php)
* [Lunar](https://lunar.fyi/)
* [Raycast](https://www.raycast.com/)

```
$ brew install grandperspective
```


## Extra Configuration

### Sublime

```
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
```

### Google Account
Add account to mail.app
System Preferences -> Internet Accounts -> enable all services



### Data Volume
Assuming /Volumes/data is mounted for data.

```
$ ./_setupdatavolume.sh
```



## Credits

https://github.com/matthewmccullough/dotfiles
https://github.com/mathiasbynens/dotfiles
