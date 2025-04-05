{ pkgs, username, ... }:

{
  home-manager.users.${username} = {
    programs = {
      vscode = {
        enable = true;
        package = pkgs.vscode;
        profiles = {
          default = {
            userSettings = {
              "editor.inlineSuggest.enabled" = true;
              "editor.minimap.enabled" = false;
              "extensions.autoUpdate" = false;
              "extensions.ignoreRecommendations" = true;
              "files.associations" = { "logcat" = "logcat"; };
              "nix.enableLanguageServer" = true;
              "nix.formatterPath" = "${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt";
              "nix.serverPath" = "${pkgs.nil}/bin/nil";
              "security.workspace.trust.untrustedFiles" = "open";
              "telemetry.telemetryLevel" = "off";
              "update.mode" = "manual";
              "editor.fontSize" = 15;
            };
            extensions = with pkgs.vscode-extensions; [
              jnoortheen.nix-ide
            ];
          };
        };
        mutableExtensionsDir = true;
      };
    };
    xdg = {
      mimeApps = {
        defaultApplications = {
          "text/plain" = "code.desktop";
          "text/xml" = "code.desktop";
        };
      };
    };
  };
}