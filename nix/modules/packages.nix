{pkgs, ...}: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    coreutils
    curl
    direnv
    dive
    getopt
    git
    gh
    gnugrep
    graphviz
    httpie
    imagemagick
    jq
    moreutils
    nodejs_24
    postgresql
    stow
    tmux
    tree
    vim
    watch
    wget
    zsh
  ];
}
