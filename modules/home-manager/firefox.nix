{ lib, config, pkgs, inputs, ... }:

{
  options = {
  };

  config = {
    programs.firefox = {
      enable = true;
    };
  };

}
