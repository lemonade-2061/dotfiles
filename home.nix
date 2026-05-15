{ pkgs, ... }:
{
  home.username = "lemonade";
  home.homeDirectory = "/home/lemonade/";
  home.stateVersion = "25.05";

  home.packages = [ pkgs.ripgrep ];

  programs.home-manager.enable = true;
}
