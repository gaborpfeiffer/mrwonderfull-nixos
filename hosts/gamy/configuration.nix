{ config, pkgs, ... }:

{
  system.stateVersion = "25.11";

  imports = [
    ../../common/xfce.nix
    ./hardware-configuration.nix
    ./bootloader.nix
    ./gpu.nix
    ./performance.nix
    ./gaming_packages.nix
    ../../common/users.nix
    ../../common/packages.nix
    ../../common/audio.nix
    ../../common/time.nix
    ../../common/i18n.nix
    ../../common/automatic_cleanup.nix
    ../../common/networking.nix
  ];

  networking.hostName = "gamy";
}