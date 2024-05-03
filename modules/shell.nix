{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.fd #LAZVIM DEPENDENCY
    pkgs.ffmpeg #VIDEO_CONVERTER
    pkgs.yt-dlp #VIDEO_DOWNLOADER
    pkgs.ripgrep #LAZYVIM DEPENDENCY
    pkgs.devbox #NIX-POWERED DEV ENVIRONMENT
    pkgs.neofetch #FETCH STATUS OF THE SYSTEM
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
  programs.lazygit.enable = true;
  programs.neovim.enable = true;
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.nushell = {
    enable = true;
    envFile.source = configs/nushell/env.nu;
    configFile.source = configs/nushell/config.nu;
  };
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
    settings = pkgs.lib.importTOML configs/starship/starship.toml;
  };
}
