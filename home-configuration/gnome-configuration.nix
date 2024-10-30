{ config, pkgs, lib, ... }:

{

  dconf.settings = {
    "org/gnome/system/location" = {
      enabled = true;
      max-accuracy-level = "exact";
    };
    "org/gnome/nautilus/preferences" = {
      date-time-format = "datailed";
      default-folder-view = "list-view";
      show-create-link = true;
      show-delete-permanently = true;
    };
    "org/gnome/nautilus/icon-view" = {
      captions = [ "size" "type" "none" ];
    };
    "org/gnome/nautilus/list-view" = {
      default-column-order = [ "name" "size" "type" "owner" "group" "permissions" "date_modified" "date_accessed" "date_created" "recency" "detailed_type" ];
      default-visible-columns = [ "name" "size" "type" "owner" "group" "permissions" "date_modified"] ;
      use-tree-view = true;
    };
    "org/gnome/desktop/notifications" = {
      show-in-lock-screen = false;
    };
    "org/gnome/desktop/calendar" = {
      show-weekdate = true;
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "close:appmenu";
      action-right-click-titlebar = "minimize";
      action-middle-click-titlebar = "lower";
      num-workspaces = 1;
    };
    "org/gnome/mutter" = {
      edge-tiling = true;
    };
    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-schedule-automatic = true;
    };
    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" ];
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>e";
      command = "/run/current-system/sw/bin/nautilus --new-window";
      name = "Nautilus";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>w";
      command = "/run/current-system/sw/bin/terminator";
      name = "Terminator";
    };
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "Print";
      command = "/etc/profiles/per-user/whatever/bin/gnome-screenshot --interactive";
      name = "Screenshot";
    };
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        caffeine.extensionUuid
        dash-to-panel.extensionUuid
        date-menu-formatter.extensionUuid
        night-theme-switcher.extensionUuid
        notifications-alert-on-user-menu.extensionUuid
      ];
    };
    "org/gnome/shell/keybindings" = {
        show-screenshot-ui = [];
    };
    "org/gnome/shell/extensions/dash-to-panel" = {
      panel-sizes = "{\"0\":36}";
      panel-positions = "{\"0\":\"RIGHT\"}";
      panel-element-positions = ''
      {"0":[{"element":"showAppsButton","visible":true,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":true,"position":"stackedTL"},{"element":"centerBox","visible":true,"position":"stackedBR"},{"element":"rightBox","visible":true,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"},{"element":"dateMenu","visible":true,"position":"stackedBR"}]}
      '';
      dot-position = "BOTTOM";
      dot-style-focust = "SQUARES";
      dot-style-unfocused = "SQUARES";
      scroll-icon-action = "PASS_THROUGH";
      scroll-panel-action = "CHANGE_VOLUME";
    };
    "org/gnome/shell/extensions/date-menu-formatter" = {
      pattern = "MM\ndd\nyy\nE\nHH\nmm\nss";
      text-align = "right";
      update-level = "2";
    };
    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = "2";
      restore-state = true;
      show-indicator = "always";
      show-notifications = false;
    };
  };  
}