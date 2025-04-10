{ username, ... }:

{
  home-manager.users.${username} = {
    wayland.windowManager.hyprland.settings = {
      exec-once = [
        "dunst"
        "nm-applet --indicator"
        "waybar"
      ];
    };
  };
}