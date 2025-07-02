{pkgs, ...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = false;
    };
    taps = ["homebrew/services"];
    brews = [];
    casks = [];
    masApps = {
      "brother-iprint-scan" = 1193539993;
      "final-cut-pro" = 424389933;
      "pairvpn" = 1347012179;
      "slack" = 803453959;
      "microsoft-windows-app" = 1295203466;
      "wireguard" = 1451685025;
    };
  };
}
