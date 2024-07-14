{ lib, config, pkgs, ... }:

{
  imports = [
    ./hyprland.nix
    ./main-user.nix
    ./steam
    ./docker
    ./keepassxc
    ./obsidian
  ];
}
