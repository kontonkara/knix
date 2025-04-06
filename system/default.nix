{
  imports = [
    ./hardware-configuration.nix
    ./bootloader
    ./user.nix
    ./kernel.nix
    ./services.nix
    ./network.nix
    ./global.nix
    ./packages.nix
    ./hardware.nix
    ./locale.nix
  ];
}