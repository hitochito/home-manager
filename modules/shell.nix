{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.devbox #NIX-POWERED DEV ENVIRONMENT
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
    syntaxHighlighting.enable = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = pkgs.lib.importTOML configs/starship/starship.toml;
  };
}
