{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.hello
    pkgs.live-server
    pkgs.tldr
    pkgs.unzip
    pkgs.wget
  ];
}
