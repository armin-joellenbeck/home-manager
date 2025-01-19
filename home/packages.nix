{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.cargo
    pkgs.clippy
    pkgs.curl
    pkgs.gcc
    pkgs.hello
    pkgs.live-server
    pkgs.rust-analyzer
    pkgs.rustc
    pkgs.tldr
    pkgs.unzip
    pkgs.wget
  ];
}
