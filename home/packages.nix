{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.hello
    pkgs.tldr
    pkgs.wget
  ];
}
