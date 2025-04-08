{ username, ... }:

{
  home-manager.users.${username} = {
    wayland.windowManager.hyprland.settings = {
      env = [
        "XCURSOR_SIZE,24"
      # "HYPRCURSOR_SIZE,24"
        "NIXOS_OZONE_WL, 1"
        "QT_QPA_PLATFORM,wayland"
        "QT_QPA_PLATFORMTHEME,qt6ct"
        "MOZ_ENABLE_WAYLAND, 1"
        "MOZ_WEBRENDER, 1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "WLR_NO_HARDWARE_CURSORS, 1"
      ]; 
    };
  };
}