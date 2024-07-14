{ pkgs, lib, config, ... }: 
{
  programs.nixvim.colorschemes = {
    rose-pine = {
      enable = true;
      settings = {
        styles = {
          italic = true;
          bold = true;
          transparency = true;
        };
      };
    };
  };
}
