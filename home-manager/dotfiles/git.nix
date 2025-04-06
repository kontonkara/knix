{ username, ... }:

{
  home-manager.users.${username} = {
    programs = {
      git = {
        enable = true;
        userName = "kontonkara";
        userEmail = "kontonkara@gmail.com";
        extraConfig = {
          color.ui = true;
        };
      };
    };
  };
}