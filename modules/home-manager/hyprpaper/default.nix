{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-hyprpaper;
in
{
  options.my-hyprpaper = {
    enable = lib.mkEnableOption "enable hyprpaper module";
  };

  config = lib.mkIf cfg.enable {
    services.hyprpaper = {
      enable = true;
      settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;

        preload = [
	  "/home/user/Wallpapers/menhera.jpg"
	];

        wallpaper = [
	  ",/home/user/Wallpapers/menhera.jpg"
        ];
      };
    };
  };

}
