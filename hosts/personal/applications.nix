{ config, pkgs, inputs, ...}:

{
  imports = [
    # cli applications
    ../../applications/cli/fish/fish.nix
    ../../applications/cli/starship/starship.nix
    ../../applications/cli/git/git.nix
    ../../applications/cli/btop.nix
    ../../applications/cli/neovim/neovim.nix

    # gui applications
    ../../applications/gui/steam.nix
    ../../applications/gui/vscodium/vscodium.nix

    # fonts
    ../../fonts/jetbrains.nix
    ../../fonts/nerd-fonts.nix
  ];
}