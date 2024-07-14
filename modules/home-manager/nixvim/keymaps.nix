{ pkgs, lib, config, ... }: 
{
  programs.nixvim = {
    globals.mapleader = " ";
  };
}
