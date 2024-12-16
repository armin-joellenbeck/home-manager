{ config, pkgs, ... }:

{
  programs.vim = {
    enable = true;
    packageConfigurable = pkgs.vim;
  };
}
