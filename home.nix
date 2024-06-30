{ config, pkgs, ... }:

{
  imports = [
    modules/shell.nix
  ];

  #DO NOT CHANGE ANYTHING BELOW.
  home.stateVersion = "24.05";
  home.username = "hitochito";
  programs.home-manager.enable = true;
  home.homeDirectory = "/home/hitochito";
}
