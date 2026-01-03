{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    google-chrome
  ];
}