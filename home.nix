{ config, pkgs, lib, ... }:

{
  # Home Manager configuration options go here
  home.username = "whatever";

  # Example configuration
  home.packages = with pkgs; [
    librewolf
  ];

  # Additional settings like programs, services, etc.
}