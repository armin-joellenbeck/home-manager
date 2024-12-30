{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.curl
    pkgs.hello
    pkgs.live-server
    pkgs.tldr
    pkgs.unzip
    pkgs.wget
  ];
}
