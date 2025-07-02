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
}
