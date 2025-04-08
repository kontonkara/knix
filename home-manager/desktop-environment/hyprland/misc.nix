{ username, ... }:

{
  home-manager.users.${username} = {
    wayland.windowManager.hyprland.settings = {
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };
      master = {
        new_status = "master";
      };
      misc = {
        force_default_wallpaper = -1;
        disable_hyprland_logo = false;
      };
      input = {
        kb_layout = "us,ru";
        kb_variant = "";
        kb_model = "";
        kb_options = "grp:alt_shift_toggle"; # for multiple layouts: 
        kb_rules = "";

        follow_mouse = 1;
        sensitivity = "0";
        force_no_accel = true;
        touchpad.natural_scroll = false;
      };
      gestures = {
        workspace_swipe = false;
      };
      device = {
        name = "";
        sensitivity = -0.5;
      };
      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];
    };
  };
}