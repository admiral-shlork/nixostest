{ config, pkgs, lib, ... }:

{
  # Home Manager configuration options go here
  home.username = "whatever";

  # Example configuration
  home.packages = with pkgs; [
    librewolf
    lutris
  ];

  # Additional settings like programs, services, etc.
  programs.home-manager.enable = true;

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
}