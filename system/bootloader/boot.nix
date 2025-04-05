{ ... }:

{
  boot = {
    loader = {
      timeout = 10;
      systemd-boot = {
        enable = true;
        configurationLimit = 7;
      };
      efi.canTouchEfiVariables = true;
    };
    initrd = {
      systemd.enable = true;
      verbose = false;
      kernelModules = [ "amdgpu" ];
    };
    consoleLogLevel = 0;
  };
}