{ config, pkgs, ... }:

{
  home.stateVersion = "24.11"; # Please check the Home Manager release notes before changing.  
  programs.home-manager.enable = true;

  home.username = "ajoellenbeck";
  home.homeDirectory = "/home/ajoellenbeck";

  home.language.base ="en_US.UTF-8";

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
  };

  imports = [
    ./home
    ./programs
  ];
}
