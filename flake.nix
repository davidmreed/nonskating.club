{
  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/nixpkgs-unstable;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { system = system; config.allowUnfree = true; }; in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [ zola just python312Packages.weasyprint inotify-tools pandoc corefonts yq-go ];
          # See https://discourse.nixos.org/t/ensure-fonts-in-development-environment/20649/4
          FONTCONFIG_FILE = pkgs.makeFontsConf {
            fontDirectories = [ pkgs.corefonts ];
          };
        };
      }
    );
}
