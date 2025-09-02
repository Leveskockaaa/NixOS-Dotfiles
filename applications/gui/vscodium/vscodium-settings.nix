{ config, pkgs, lib, ... }:

{
  programs.vscode.extensions = with pkgs.vscode-extensions; [
    catppuccin.catppuccin-vsc
    catppuccin.catppuccin-vsc-icons

    golang.go
    redhat.java
    vscjava.vscode-java-pack
  ];

  programs.vscode.userSettings = {
    "workbench.colorTheme" = "Catppuccin Mocha";
    "workbench.iconTheme" = "Catppuccin Icons";

    "editor.mouseWheelZoom" = true;
    "editor.fontFamily" = "'JetBrainsMono Nerd Font', monospace";
    "editor.fontLigatures" = false;
  };
}
