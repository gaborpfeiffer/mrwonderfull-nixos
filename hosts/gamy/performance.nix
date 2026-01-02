{ config, pkgs, ... }:

{
  programs.gamemode.enable = true;
  services.xserver.libinput.enable = true;
  powerManagement.cpuFreqGovernor = "performance";
}