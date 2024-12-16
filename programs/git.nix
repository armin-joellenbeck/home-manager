{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "Armin Jöllenbeck";
      user.email = "armin@joellenbeck.net";
      init.defaultBranch = "main";
    };
  };
}
