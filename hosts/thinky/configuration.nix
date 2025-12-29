{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./bootloader.nix
    ../../common/gnome.nix
    ../../common/users.nix
    ../../common/packages.nix
    ../../common/time.nix
    ../../common/i18n.nix
  ];

  networking.hostName = "thinky";
}