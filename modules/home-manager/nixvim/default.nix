{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-nixvim;
in
{
  imports = [
    ./colorscheme.nix
    ./whichkey.nix
    ./keymaps.nix
    ./options.nix
    ./lsp.nix
    ./treesitter.nix
  ];
  options.my-nixvim = {
    enable = lib.mkEnableOption "enable nixvim module";
  };

  config = lib.mkIf cfg.enable {

    programs.nixvim = {
      enable = true;
      defaultEditor = true;

      viAlias = true;
      vimAlias = true;

      luaLoader.enable = true;

    };
  };

}
