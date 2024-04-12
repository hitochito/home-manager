{ config, pkgs, ... }:

{
  programs.gh.enable = true;
  programs.git.enable = true;
  programs.lazygit.enable = true;
  programs.git.userName = "hitochito";
  programs.git.userEmail = "hitochito0@gmail.com";

  programs.neovim.enable = true;
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.nushell = {
    enable = true;
  };
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    settings = pkgs.lib.importTOML configs/starship/starship.toml;
  };
}
