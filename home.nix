{ config, pkgs, lib, ... }:

{
  # Home Manager configuration options go here
  home = {
    username = "whatever";
    homeDirectory = "/home/whatever";
    stateVersion = "24.05";
    packages = with pkgs; [
      librewolf
      lutris
    ];
  };

}