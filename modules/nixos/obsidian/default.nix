{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-obsidian;
in
{
  options.my-obsidian = {
    enable = lib.mkEnableOption "enable obsidian module";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = [
      pkgs.obsidian
    ];
  };
}
