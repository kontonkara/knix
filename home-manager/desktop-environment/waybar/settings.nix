{ username, ... }:

{
  home-manager.users.${username} = {
    programs.waybar = {
      enable = true;
      settings = {
        mainBar = {
          layer = "top";
          modules-left = [ "clock" ];
          modules-center = [ "hyprland/workspaces" ];
          modules-right = [ "cpu" "memory" "pulseaudio" "network" "battery" ];
        };
      };
    };
  };
}