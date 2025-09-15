{ config, pkgs, inputs, ...}:

{
  imports = [
    # cli applications
    ../../applications/cli/btop/btop.nix
    ../../applications/cli/docker/docker.nix
    ../../applications/cli/exa/exa.nix
    ../../applications/cli/fastfetch/fastfetch.nix
    ../../applications/cli/fish/fish.nix
    ../../applications/cli/ghostty/ghostty.nix
    ../../applications/cli/git/git.nix
    ../../applications/cli/kitty/kitty.nix
    ../../applications/cli/nano/nano.nix
    ../../applications/cli/neovim/neovim.nix    
    ../../applications/cli/nodejs/nodejs.nix
    ../../applications/cli/starship/starship.nix
    ../../applications/cli/tree/tree.nix
    ../../applications/cli/wget/wget.nix

    # gui applications
    ../../applications/gui/anki/anki.nix
    ../../applications/gui/discord/discord.nix
    ../../applications/gui/easytag/easytag.nix
    ../../applications/gui/firefox/firefox.nix
    ../../applications/gui/obsidian/obsidian.nix
    ../../applications/gui/qbittorrent/qbittorrent.nix
    ../../applications/gui/quickshell/quickshell.nix
    ../../applications/gui/spotify/spotify.nix
    ../../applications/gui/steam/steam.nix
    ../../applications/gui/teams/teams.nix
    ../../applications/gui/vlc/vlc.nix
    ../../applications/gui/vscodium/vscodium.nix

    # programming languages
    ../../applications/languages/java.nix
    ../../applications/languages/go.nix
    ../../applications/languages/python.nix

    # fonts
    ../../applications/fonts/nerd-fonts.nix
  ];

  # States of cli packages
  btop.enable = true;
  docker.enable = true;
  exa.enable = true;
  fastfetch.enable = true;
  fish.enable = true;
  ghostty.enable = true;
  git.enable = true;
  kitty.enable = true;
  nano.enable = true;
  neovim.enable = true;
  nodejs.enable = true;
  starship.enable = true;
  tree.enable = true;
  wget.enable = true;

  # States of gui packages
  anki.enable = true;
  discord.enable = true;
  easytag.enable = true;
  firefox.enable = true;
  obsidian.enable = true;
  qbittorrent.enable = true;
  quickshell.enable = false;
  spotify.enable = true;
  steam.enable = true;
  teams.enable = true;
  vlc.enable = true;

  # States of language packages
  golang.enable = true;
  java.enable = true;
  python.enable = true;
}