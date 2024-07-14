{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-vscode;
in
{
  options.my-vscode = {
    enable = lib.mkEnableOption "enable vscode module";
  };

  config = lib.mkIf cfg.enable {
    programs.vscode = {
      enable = true;
      package = pkgs.vscode;
      extensions = with pkgs.vscode-extensions; [
        elixir-lsp.vscode-elixir-ls
      ];
    };
  };

}
