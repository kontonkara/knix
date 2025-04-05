{ username, ... }:

{
  # imports = [
  #   ./packages
  # ];

  home-manager.users.${username} = {
    home = {
      username = "kontonkara";
      homeDirectory = "/home/kontonkara";
      stateVersion = "24.11";
    };
  };
}