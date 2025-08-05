{ config, pkgs, inputs, ...}:

{
  imports = [
    ../../applications/cli/fish/fish.nix
    ../../applications/cli/starship/starship.nix
    ../../applications/cli/git/git.nix
    ../../applications/cli/btop.nix
    ../../applications/cli/neovim/neovim.nix

    ../../applications/gui/steam.nix
    ../../applications/gui/vscodium/vscodium.nix
  ];
}