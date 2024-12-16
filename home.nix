{ config, pkgs, ... }:

{
  home.stateVersion = "24.11"; # Please check the Home Manager release notes before changing.  
  programs.home-manager.enable = true;

  home.username = "ajoellenbeck";
  home.homeDirectory = "/home/ajoellenbeck";

  home.packages = [
    pkgs.hello
  ];

  programs.gh = {
    enable = true;
  };

  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "Armin Jöllenbeck";
      user.email = "armin@joellenbeck.net";
      init.defaultBranch = "main";
    };
  };

  programs.vim = {
    enable = true;
    packageConfigurable = pkgs.vim;
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

}
