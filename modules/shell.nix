{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.fd #LAZVIM DEPENDENCY
    pkgs.ripgrep #LAZYVIM DEPENDENCY
  ];

  programs.gh.enable = true;
  programs.git.enable = true;
  programs.lazygit.enable = true;
  programs.git.userName = "hitochito";
  programs.git.userEmail = "hitochito0@gmail.com";

  programs.neovim.enable = true;
  home.sessionVariables = {
    EDITOR = "nvim";
  };


  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    envExtra = '' '';
    initExtra = ''
    #KEYBINDS
    #bindkey -L TO LIST ALL KEYBINDS
    bindkey '^F' autosuggest-accept #ACCEPT GIVEN SUGGESTION
    '';
  };
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = pkgs.lib.importTOML configs/starship/starship.toml;
  };
}
