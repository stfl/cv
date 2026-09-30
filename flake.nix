{
  description = "Typst CV development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
    in
    {
      devShells = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          fonts = [
            pkgs.source-sans
            pkgs.roboto
            pkgs.font-awesome
          ];
        in
        {
          default = pkgs.mkShell {
            buildInputs = [
              pkgs.typst
              pkgs.just
            ] ++ fonts;

            FONTCONFIG_FILE = pkgs.makeFontsConf {
              fontDirectories = fonts;
            };
          };
        });
    };
}
