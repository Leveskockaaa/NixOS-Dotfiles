{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      # kétsoros prompt
      add_newline = true;

      # pl. felső sor: user@host [time] [git]
      format = ''
        [](blue)$username$hostname$directory$git_branch$git_status$time[](blue)
        $character
      '';

      username = {
        show_always = true;
        style_user = "bg:blue fg:white";
        style_root = "bg:red fg:white";
        format = "[ $user ]($style)";
      };

      hostname = {
        ssh_only = false;
        style = "bg:blue fg:white";
        format = "[@$hostname ]($style)";
      };

      directory = {
        style = "bg:blue fg:white";
        format = "[ $path ]($style)";
        truncate_to_repo = false;
      };

      git_branch = {
        style = "bg:blue fg:yellow";
        format = "[ $branch ]($style)";
      };

      git_status = {
        style = "bg:blue fg:red";
        format = "[$all_status$ahead_behind ]($style)";
      };

      time = {
        disabled = false;
        time_format = "%T";
        style = "bg:blue fg=white";
        format = "[ $time ]($style)";
      };

      character = {
        success_symbol = "[❯](green)";
        error_symbol = "[✗](red)";
      };
    };
  }
}