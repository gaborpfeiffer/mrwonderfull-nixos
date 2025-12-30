{
  description = "Multi-host NixOS config with devShell and Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
  in {
    nixosConfigurations.thinky = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        ./hosts/thinky/configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          home-manager.users.mrwonderfull =
            import ./home/mrwonderfull.nix;
        }
      ];
    };

    devShells.${system}.default =
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      pkgs.mkShell {
        packages = with pkgs; [
          php
          nodejs
          pnpm
        ];
      };
  };
}