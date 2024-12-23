{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.hello
    pkgs.tldr
    pkgs.unzip
    pkgs.wget
  ];
}
