{ config, pkgs, inputs, ...}:

{
  imports = [
    # cli applications
    ../../applications/cli/ghostty/ghostty.nix
    ../../applications/cli/fish/fish.nix
    ../../applications/cli/starship/starship.nix
    ../../applications/cli/git/git.nix
    ../../applications/cli/btop.nix
    ../../applications/cli/neovim/neovim.nix

    # gui applications
    ../../applications/gui/steam.nix
    ../../applications/gui/vscodium/vscodium.nix
    ../../applications/gui/obsidian/obsidian.nix

    # programming languages
    ../../applications/languages/java.nix
    ../../applications/languages/go.nix
    ../../applications/languages/python.nix

    # fonts
    ../../applications/fonts/nerd-fonts.nix
  ];
}