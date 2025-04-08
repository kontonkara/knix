{ username, ... }:

{
  home-manager.users.${username} = {
    programs.waybar = {
      enable = true;
      settings = {
        mainBar = {
          layer = "top";
          modules-left = [ "custom/nix" "clock" ];
          modules-center = [ "hyprland/workspaces" ];
          modules-right = [ "cpu" "memory" "pulseaudio" "network" "battery" ];
        };
        "custom/nix" = {
          "format" = "   ";
          "tooltip" = false;
          "on-click" = "sh $HOME/.config/rofi/bin/powermenu";
        };
        "hyprland/workspaces" = {
          "format" = "{icon}";
          "all-outputs" = true;
          "format-icons" = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6"; 
            "7" = "7"; 
            "8" = "8"; 
            "9" = "9"; 
            "10" = "0";
          };
        };
      };
    };
  };
}