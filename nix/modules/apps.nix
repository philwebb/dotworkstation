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
    graphviz
    httpie
    imagemagick
    jq
    moreutils
    nodejs_24
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
      "zoom"
    ];
    masApps = {
      "keynote" = 409183694;
      "xcode" = 497799835;
    };
  };
}
