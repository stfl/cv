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
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            typst
            just

            # Fonts
            source-sans
            roboto
            font-awesome
          ];

          shellHook = ''
            export TYPST_FONT_PATHS="${pkgs.source-sans}/share/fonts/opentype:${pkgs.roboto}/share/fonts/truetype:${pkgs.font-awesome}/share/fonts/opentype"
          '';
        };
      });
}
