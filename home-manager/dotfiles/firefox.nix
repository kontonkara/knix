{ pkgs, username, ... }:

{
  home-manager.users.${username} = {
    programs = {
      firefox = {
        enable = true;
        package = pkgs.firefox-bin;
        languagePacks = [
          "en-US"
          "ru-RU"
        ];
        policies = {
          AutofillAddressEnabled = false;
          AutofillCreditCardEnabled = false;
          DisableTelemetry = true;
        };
      };
    };
    xdg = {
      mimeApps = {
        defaultApplications = {
          "text/html" = "firefox.desktop";
          "x-scheme-handler/http" = "firefox.desktop";
          "x-scheme-handler/https" = "firefox.desktop";
          "x-scheme-handler/about" = "firefox.desktop";
          "x-scheme-handler/unknown" = "firefox.desktop";
        };
      };
    };
  };
}