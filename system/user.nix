{ pkgs, username, ... }:

{
  users.users.${username} = {
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    hashedPassword = "$6$9H9XYvFnK3rZOZCb$5bf3tFa9wpLO.Ad.XJwtbeIRROH0bp6Uy6wh/ZnZsLmdJLmiD.YBJPNBEA8y7R9Wi8jmow/uax6luAXCcdfTm/";
  };
}