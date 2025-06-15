_: {
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  ids.gids.nixbld = 350;

  system.stateVersion = 4;
}
