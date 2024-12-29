{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    coreutils
    curl
    direnv
    dive
    git
    gh
    gnugrep
    httpie
    imagemagick
    jq
    stow
    tmux
    tree
    vim
    watch
    wget
    zsh
  ];
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = false;
    };
    taps = ["homebrew/services"];
    brews = [];
    casks = [
      "1password"
      "1password-cli"
      "adobe-creative-cloud"
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
      "purevpn"
      "raycast"
      "rectangle"
      "skype"
      "sublime-text"
      "visual-studio-code"
      "vlc"
      "wireshark"
      "zed"
      "zoom"
    ];
    masApps = {
      "brother-iprint-scan" = 1193539993;
      "final-cut-pro" = 424389933;
      "keynote" = 409183694;
      "pairvpn" = 1347012179;
      "slack" = 803453959;
      "microsoft-windows-app" = 1295203466;
      "wireguard" = 1451685025;
      "xcode" = 497799835;
    };
  };
}
