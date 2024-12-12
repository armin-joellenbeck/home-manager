{ config, pkgs, ... }:

{
  home.stateVersion = "24.11"; # Please check the Home Manager release notes before changing.  
  programs.home-manager.enable = true;

  home.username = "ajoellenbeck";
  home.homeDirectory = "/home/ajoellenbeck";

  home.packages = [
    pkgs.hello

    (pkgs.writeShellScriptBin "my-hello" ''
      echo "Hello, ${config.home.username}!"
    '')
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
  };

  home.file = {
    # ".screenrc".source = dotfiles/screenrc;

    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

}
