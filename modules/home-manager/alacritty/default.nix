{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-alacritty;
in
{
  options.my-alacritty = {
    enable = lib.mkEnableOption "enable alacritty module";
  };

  config = lib.mkIf cfg.enable {
    programs.alacritty = {
      enable = true;
      settings = {
        window.opacity = 0.9;
      };
    };
  };

}
