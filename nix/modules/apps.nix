{pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = false;
    };
    taps = [];
    brews = [];
    casks = [
      "1password"
      "1password-cli"
      "bartender"
      "caffeine"
      "dehesselle-meld"
      "docker"
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
      "zed"
    ];
    masApps = {
      "keynote" = 409183694;
      "xcode" = 497799835;
    };
  };
}
