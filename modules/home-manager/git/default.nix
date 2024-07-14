{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-git;
in
{
  options.my-git = {
    enable = lib.mkEnableOption "enable git module";
  };

  config = lib.mkIf cfg.enable {
    programs.git = {
      enable = true;
      userName  = "Pavel Barabanov";
      userEmail = "barabanovpv95@gmail.com";
      aliases = {
        ci = "commit";
        co = "checkout";
        s = "status";
      };
    };
  };
}
