{ config, pkgs, ... }:

{
  imports = [
    ./gh.nix
    ./git.nix
    ./vim.nix
    ./vscode.nix
  ];
}
