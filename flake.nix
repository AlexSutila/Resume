{
  description = "Resume flake for LaTeX compilation";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.x86_64-linux.default =
        pkgs.mkShell
        {
          buildInputs = with pkgs; [
            (pkgs.texlive.combine {
              inherit (pkgs.texlive) scheme-basic
                enumitem setspace mlmodern;
            })
          ];
        };
    };
}
