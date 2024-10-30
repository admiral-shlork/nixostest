{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./home-configuration/gnome-configuration.nix
      ./home-configuration/starship-configuration.nix
    ];

  # Home Manager configuration options go here
  home = {
    username = "whatever";
    homeDirectory = "/home/whatever";
    stateVersion = "24.05";
    packages = with pkgs; [
      # audacity
      # calibre
      # deadbeef-with-plugins
      # deluge-gtk
      # discord
      # docker
      # dropbox
      # easytag
      # element-desktop
      # evince
      # firefox-devedition
      # gimp
      gnome.gnome-screenshot
      # jetbrains.pycharm-community
      # keepassxc
      # libreoffice
      # librewolf
      # lutris
      # megasync
      nerdfonts
      # obsidian
      # parsec-bin
      # protonvpn-gui
      # signal-desktop
      # soulseekqt
      # soundconverter
      # steam
      # telegram-desktop
      # thunderbird
      # ungoogled-chromium
      # virtualbox
      # vivaldi
      # veracrypt
      # vlc
      # yacreader
    ];
  };
}
