{pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };
    taps = [];
    brews = [
      "noti"
    ];
    casks = [
      "1password"
      "1password-cli"
      "bartender"
      "caffeine"
      "dehesselle-meld"
      "ghostty"
      "gitx"
      "google-chrome"
      "google-drive"
      "grandperspective"
      "firefox"
      "iina"
      "karabiner-elements"
      "raycast"
      "rectangle"
      "sublime-text"
      "visual-studio-code"
      "vlc"
      "wireshark"
      "xbar"
      "zed"
    ];
    masApps = {
      "keynote" = 409183694;
      "xcode" = 497799835;
    };
  };
}
