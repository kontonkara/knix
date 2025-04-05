{ pkgs, username, ... }:

{
  home-manager.users.${username} = {
    programs = {
      fish = {
        enable = true;
        package = pkgs.fish;
        plugins = [
          {
            name = "bass";
            src = pkgs.fetchFromGitHub {
              owner = "edc";
              repo = "bass";
              rev = "2fd3d2157d5271ca3575b13daec975ca4c10577a";
              sha256 = "sha256-fl4/Pgtkojk5AE52wpGDnuLajQxHoVqyphE90IIPYFU=";
            };
          }
        ];
        shellAliases = {
          nix-switch = "sudo nixos-rebuild switch";
        };
      };
    };
  };
}