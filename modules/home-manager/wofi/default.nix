{ lib, config, pkgs, ... }:

let
  cfg = config.wofi;
in
{
  options.wofi = {
    enable = lib.mkEnableOption "enable wofi module";
  };

  config = lib.mkIf cfg.enable {
    programs.wofi = {
      enable = true;
    };
  };

}
