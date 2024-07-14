{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-keepassxc;
in
{
  options.my-keepassxc = {
    enable = lib.mkEnableOption "enable keepassxc module";
  };

  config = lib.mkIf cfg.enable {
    environment.systemPackages = [
      pkgs.keepassxc
    ];
  };
}
