{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.devbox #NIX-POWERED DEV ENVIRONMENT
    pkgs.unzip #LAZYVIM
    pkgs.ripgrep #LAZYVIM
    pkgs.nodejs_22 #LAZYVIM
    pkgs.stylua #LAZYVIM
  ];

  programs.git = {
    enable = true;
    userName = "hitochito";
    userEmail = "hitochito0@gmail.com";
    aliases = {
      # Ignore Changes Locally From a File.
      hide = "update-index --assume-unchanged";
      unhide = "update-index --no-assume-unchanged";
      unhide-all = "update-index --really-refresh";

      # git add, commit, push Using Single Command
      acp = "!f() { git add -A && git commit -m \"$@\" && git push; }; f";

      # List Hidden/Ignored Files
      hidden = "!f(){ git -C \"$GIT_PREFIX\" ls-files -v \"$@\" | grep \"^[a-z]\";}; f";
      ignored = "!f(){ git -C \"$GIT_PREFIX\" status -s --ignored \"$@\" | grep \"^!!\";}; f";
    };
  };
  programs.gh.enable = true;


  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

      history = {
      size = 10000;
      ignoreDups = true;
      share = true;
      save = 10000;
      extended = true;

      # Optional: Add some useful options
    initExtra = ''
      setopt HIST_REDUCE_BLANKS
      bindkey '^F' autosuggest-accept
    '';
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = pkgs.lib.importTOML configs/starship/starship.toml;
  };
}
