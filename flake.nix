{
  description = "NixOS system";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }:
    let
      system = "x86_64-linux";
    in {
      nixosConfigurations = {
        personal = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/personal/configuration.nix
          ];
        };

        # server = nixpkgs.lib.nixosSystem {
        #   inherit system;
        #   modules = [
        #     ./hosts/server/configuration.nix
        #     ./hosts/server/hardware-configuration.nix
        #   ];
        # };
      };
    };
}
