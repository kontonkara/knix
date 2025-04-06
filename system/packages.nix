{ pkgs, username, ... }:

{
  users.users.${username} = {
    packages = with pkgs; [
      tree
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    vscode
    spotify
    keepassxc
  ];
}