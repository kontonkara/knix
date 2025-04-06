{ pkgs, username, ... }:

{
  users.users.${username} = {
    packages = with pkgs; [
      tree
      spotify
      telegram-desktop
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    keepassxc
    rofi-wayland
    waybar
    dunst
    kitty
  ];
}