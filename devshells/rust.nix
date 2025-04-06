{ pkgs, ... }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs;
    [
      gcc
      pkg-config
      clang
      gnumake
      rustup
    ] ++ (with jetbrains; [ rust-rover ]);

  buildInputs = with pkgs; [
    openssl
    sqlite
    gtk4
  ];

  NIX_LD = pkgs.lib.fileContents "${pkgs.stdenv.cc}/nix-support/dynamic-linker";
}