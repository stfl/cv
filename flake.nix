{
  description = "Typst CV development environment";

  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.1";
    flake-utils.url = "https://flakehub.com/f/numtide/flake-utils/*";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        fonts = [
          pkgs.source-sans
          pkgs.roboto
          pkgs.font-awesome
        ];
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.typst
            pkgs.just
          ] ++ fonts;

          FONTCONFIG_FILE = pkgs.makeFontsConf {
            fontDirectories = fonts;
          };
        };
      });
}
