{ config, pkgs, ... }:

{
  imports = [
    modules/shell.nix
  ];

  #DO NOT CHANGE ANYTHING BELOW.
  home.username = "hitochito";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
  home.homeDirectory = "/home/hitochito";
}
