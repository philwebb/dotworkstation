{
  pkgs,
  username,
  ...
}: {
  system = {
    stateVersion = 6;
    primaryUser = "${username}";
  };
}
