{ config, pkgs, ... }:

{
  users.users.mrwonderfull = {
    isNormalUser = true;
    description = "Mr WonderFull";
    extraGroups = [ "wheel" "networkmanager" ];
  };
}