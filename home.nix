{ config, pkgs, lib, ... }:

{
  # Home Manager configuration options go here
  home.username = "whatever";

  # Example configuration
  home.packages = with pkgs; [
    librewolf
    lutris
  ];

  users.users.whatever = {
    isNormalUser = true;
    home = "/home/whatever";
  };
}