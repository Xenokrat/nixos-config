{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-syncthing;
in
{
  options.my-syncthing = {
    enable = lib.mkEnableOption "enable syncthing module";
  };

  config = lib.mkIf cfg.enable {
    services.syncthing = {
      enable = true;
    };
  };

}
