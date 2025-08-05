{ config, pkgs, lib, ... }:

{
  programs.vscode.extensions = with pkgs.vscode-extensions; [
    catppuccin.catppuccin-vsc
    catppuccin.catppuccin-vsc-icons

    golang.go
    redhat.java
  ];

  programs.vscode.userSettings = {
    "workbench.colorTheme" = "Catppuccin Mocha";
    "workbench.iconTheme" = "Catppuccin Icons";

    "editor.mouseWheelZoom" = true;
    "editor.fontFamily" = "'JetBrains Mono', monospace";
    "editor.fontLigatures" = false;
  };
}