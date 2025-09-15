{
  description = "NixOS System";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs =
    { self, nixpkgs, home-manager, hyprland, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      nixosConfigurations = {

        personal = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/personal/configuration.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useUserPackages = true;
              home-manager.users.leveskocka = import ./hosts/personal/home.nix;
            }
          ];
        };

        hyprland = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./hosts/hyprland/configuration.nix

            home-manager.nixosModules.home-manager
            {
              home-manager.useUserPackages = true;
              home-manager.users.leveskocka = import ./hosts/hyprland/home.nix;

              programs.hyprland = {
                enable = true;
                package = hyprland.packages.${system}.hyprland;
                portalPackage = hyprland.packages.${system}.xdg-desktop-portal-hyprland;
              };
            }
          ];
        };
      };

      homeConfigurations."leveskocka" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        # Specify your home configuration modules here, for example,
        # the path to your home.nix.
        modules = [ ./hosts/personal/home.nix ];

        # Optionally use extraSpecialArgs
        # to pass through arguments to home.nix
      };
    };
}
