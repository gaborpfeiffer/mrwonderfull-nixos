{ config, pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
    lutris
    bottles
    wineWowPackages.staging
    mesa-demos
    mangohud
  ]; 
}