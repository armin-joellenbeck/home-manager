{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./gh.nix
    ./git.nix
    ./vim.nix
    ./vscode.nix
  ];
}
