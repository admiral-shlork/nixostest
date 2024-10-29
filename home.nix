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
      gnome.dconf-editor
    ];
  };

  dconf = {
    enable = true;
    settings."org/gnome/system/location" = {
      enabled = true;
      max-accuracy-level = "exact";
    };
    settings."org/gnome/nautilus/preferences" = {
      date-time-format = "datailed";
      default-folder-view = "list-view";
      show-create-link = true;
      show-delete-permanently = true;
    };
    settings."org/gnome/nautilus/icon-view" = {
      captions = "['size', 'type', 'none']";
    };
    settings."org/gnome/nautilus/list-view" = {
      default-column-order = "['name', 'size', 'type', 'owner', 'group', 'permissions', 'date_modified', 'date_accessed', 'date_created', 'recency', 'detailed_type']";
      default-visible-columns = "['name', 'size', 'type', 'owner', 'group', 'permissions', 'date_modified']";
      use-tree-view = true;
    };
    settings."org/gnome/destkop/wm/preferences" = {
      button-layout = "close:appmenu";
      action-right-click-titlebar = "minimize";
      action-middle-click-titlebar = "lower";
    };
    settings."org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        caffeine.extensionUuid
        dash-to-panel.extensionUuid
        date-menu-formatter.extensionUuid
        night-theme-switcher.extensionUuid
        notifications-alert-on-user-menu.extensionUuid
      ];
    };
    settings."org/gnome/shell/extensions/dash-to-panel" = {
      panel-sizes = "{\"0\":36}";
      panel-positions = "{\"0\":\"RIGHT\"}";
      panel-element-positions = ''
      {"0":[{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"}]}
      '';
    };
    settings."org/gnome/shell/extensions/date-menu-formatter" = {
      pattern = "MM\ndd\nyy\nE\nHH\nmm\nss";
      text-align = "right";
      update-level = "2";
      dot-position = "BOTTOM";
      dot-style-focust = "SQUARES";
      dot-style-unfocused = "SQUARES";
      scroll-icon-action = "PASS_THROUGH";
      scroll-panel-action = "CHANGE_VOLUME";
    };
    settings."org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = "2";
      restore-state = true;
      show-indicator = "always";
      show-notifications = false;
    };
  };
}
