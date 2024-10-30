{ config, pkgs, lib, ... }:

{
  imports =
    [
      ./home-configuration/gnome-configuration.nix
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

  programs.bash.enable = true;
  programs.starship.enable = true;
  programs.starship.settings = {
    aws.disabled = true;
    battery.disabled = true;
    container.disabled = true;
    dotnet.disabled = true;
    java.disabled = true;
    nodejs.disabled = true;
    directory.truncate_to_repo = false;
    git_status.stashed = "$";
  };
}
