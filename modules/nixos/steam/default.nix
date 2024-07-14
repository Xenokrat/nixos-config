{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-steam;
in
{
  options.my-steam = {
    enable = lib.mkEnableOption "enable steam module";
  };

  config = lib.mkIf cfg.enable {
    programs.steam = {
      enable = true;
      gamescopeSession.enable = true;

    };
    programs.gamemode.enable = true;
    environment.systemPackages = with pkgs; [
      mangohud
      protonup
    ];

    environment.sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATH =
        "/home/user/.steam/root/compatibilitytools.d";
    };

  };

}
