{ lib, config, pkgs, inputs, ... }:

{
  options = {
  };

  config = {
    programs.yazi = {
      enable = true;
    };
    xdg.configFile."yazi/yazi.toml".source = ./yazi.toml;
  };

}
