{ username, ... }:

{
  # imports = [
  #   ./packages
  # ];

  home-manager.users.kontonkara = {
    home = {
      username = "kontonkara";
      homeDirectory = "/home/kontonkara";
      stateVersion = "24.11";
    };
  };
}