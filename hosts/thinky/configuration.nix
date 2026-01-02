{ config, pkgs, ... }:

{
  system.stateVersion = "25.11";
  
  imports = [
    ###DESKTOP ENV CHOOSE ONE##
    ../../common/cosmic.nix
    #../../common/gnome.nix
    #../../common/kde.nix
    #../../common/xfce.nix
    ###########################
    ./hardware-configuration.nix
    ./bootloader.nix
    ../../common/users.nix
    ../../common/packages.nix
    ../../common/audio.nix
    ../../common/time.nix
    ../../common/i18n.nix
    ../../common/automatic_cleanup.nix
    ../../common/networking.nix
  ];

  networking.hostName = "thinky";
}