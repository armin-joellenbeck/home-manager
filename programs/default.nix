{ config, pkgs, ... }:

{
  imports = [
    ./bacon.nix
    ./bash.nix
    ./gh.nix
    ./git.nix
    ./micro.nix
    ./vim.nix
    ./zed-editor.nix
  ];
}
