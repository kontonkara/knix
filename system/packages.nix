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
  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    keepassxc
    rofi-wayland
    dunst
    kitty
    networkmanagerapplet
    xfce.thunar
    discord
    wl-clipboard
  ];
}