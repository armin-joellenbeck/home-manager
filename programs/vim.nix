{ config, pkgs, ... }:

{
  programs.vim = {
    enable = true;
    packageConfigurable = pkgs.vim;
    extraConfig = ''
      set autoindent
    '';
    settings = {
      expandtab = true;
      mouse = "a";
      number = true;
      shiftwidth = 2;
    };
  };
}
