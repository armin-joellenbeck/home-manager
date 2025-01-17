{ config, pkgs, ... }:

{
  imports = [
    ./bacon.nix
    ./bash.nix
    ./gh.nix
    ./git.nix
    ./vim.nix
  ];
}
