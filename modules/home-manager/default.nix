{ pkgs, ... }:

{
  imports = [
    ./hyprland-config.nix
    ./firefox.nix
    ./waybar.nix
    ./wofi
    ./nixvim
    ./alacritty
    ./yazi
    ./hyprpaper
    ./syncthing
    ./git
    ./vscode
  ];

  home.packages = with pkgs; [

    eza
    bat
    fd
    ripgrep

    # Development
    zellij
    git

    # Files
    dolphin

    # Media
    vlc

    # Overview
    btop
    lazygit
    lazydocker
    fastfetch
    tldr

  ];
}
