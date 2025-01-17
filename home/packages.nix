{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.cargo
    pkgs.curl
    pkgs.gcc
    pkgs.hello
    pkgs.live-server
    pkgs.rust-analyzer
    pkgs.tldr
    pkgs.unzip
    pkgs.wget
  ];
}
