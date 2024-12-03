{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.11";
  };
  outputs = {nixpkgs, ...}: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ] (system: function (import nixpkgs {inherit system;}));
  in {
    devShells = forAllSystems (pkgs: {
      default = pkgs.mkShell {
        buildInputs = with pkgs; [
          biome
          lua-language-server
          luajitPackages.luacheck
          nodejs
          stylua
          yarn
        ];
      };
    });
  };
}
