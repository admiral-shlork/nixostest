{ config, pkgs, lib, ... }:

{
  programs.bash.enable = true;
  
  # visit: https://gist.github.com/s-a-c/0e44dc7766922308924812d4c019b109
  # for Starship configuration in Nix
  programs.starship.enable = true;
  programs.starship.settings = {
    add_newline = true;
    format = "$shlvl$shell$username$hostname$battery$nix_shell$git_branch$git_commit$git_metrics$git_state$git_status$directory$jobs$cmd_duration$character";
    shlvl = {
      disabled = false;
      symbol = "ﰬ";
      style = "bright-red bold";
    };
    shell = {
      disabled = false;
      format = "";
      bash_indicator = "(bright-white) ";
    };
    battery = {
      format = "[$symbol$percentage]($style) ";
      charging_symbol = " ";
      discharging_symbol = " ";
      empty_symbol = " ";
      full_symbol = " ";
      unknown_symbol = " ";
      disabled = false;
      display = [
        {
          style = "red bold";
          threshold = 10;
        }
      ];
    };
    character = {
      format = "$symbol ";
      vicmd_symbol = "[❮](bold green)";
      disabled = false;
      success_symbol = "[➜](bold green) ";
      error_symbol = "[✗](bold red) ";
    };
    cmd_duration = {
      min_time = 2000;
      format = "⏱ [$duration]($style) ";
      style = "yellow bold";
      show_milliseconds = false;
      disabled = false;
      show_notifications = false;
      min_time_to_notify = 45000;
    };
    directory = {
      disabled = false;
      fish_style_pwd_dir_length = 0;
      format = "[$path]($style)[$read_only]($read_only_style) ";
      home_symbol = "~";
      read_only = " ";
      read_only_style = "red";
      repo_root_format = "[$before_root_path]($style)[$repo_root]($repo_root_style)[$path]($style)[$read_only]($read_only_style) ";
      style = "yellow bold bg:0xDA627D";
      truncate_to_repo = true;
      truncation_length = 8;
      truncation_symbol = "…/";
      use_logical_path = true;
      use_os_path_sep = true;
    };
    username = {
      format = "[$user]($style) ";
      show_always = true;
      style_root = "red bold bg:0x9A348E";
      style_user = "blue bold bg:0x9A348E";
      disabled = false;
    };
    hostname = {
      disabled = false;
      format = "[$ssh_symbol](blue dimmed bold)[$hostname]($style) ";
      ssh_only = false;
      style = "green dimmed bold";
      trim_at = ".";
    };
    git_branch = {
      format = "[$symbol$branch(:$remote_branch)]($style) ";
      symbol = " ";
      style = "bold purple bg:0xFCA17D";
      truncation_length = 9223372036854775807;
      truncation_symbol = "…";
      only_attached = false;
      always_show_remote = false;
      ignore_branches = [];
      disabled = false;
    };
    git_commit = {
      commit_hash_length = 7;
      format = "[($hash$tag)]($style) ";
      style = "green bold";
      only_detached = true;
      disabled = false;
      tag_symbol = " 🏷  ";
      tag_disabled = true;
    };
    git_metrics = {
      added_style = "bold green";
      deleted_style = "bold red";
      only_nonzero_diffs = true;
      format = "([+$added]($added_style) )([-$deleted]($deleted_style) )";
      disabled = false;
    };
    git_state = {
      am = "AM";
      am_or_rebase = "AM/REBASE";
      bisect = "BISECTING";
      cherry_pick = "🍒PICKING(bold red)";
      disabled = false;
      format = "([$state( $progress_current/$progress_total)]($style)) ";
      merge = "MERGING";
      rebase = "REBASING";
      revert = "REVERTING";
      style = "bold yellow";
    };
    git_status = {
      ahead = "🏎💨$count";
      behind = "😰$count";
      conflicted = "🏳";
      deleted = "🗑";
      disabled = false;
      diverged = "😵";
      format = "([$all_status$ahead_behind]($style) )";
      ignore_submodules = false;
      modified = "📝";
      renamed = "👅";
      staged = "[++($count)](green)";
      stashed = "📦";
      style = "red bold bg:0xFCA17D";
      untracked = "🤷";
      up_to_date = "✓";
    };

  };
}