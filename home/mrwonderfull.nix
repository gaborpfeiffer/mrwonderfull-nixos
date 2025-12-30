{ pkgs, ... }:

{
  home.username = "mrwonderfull";
  home.homeDirectory = "/home/mrwonderfull";

  home.stateVersion = "25.11";

  # Git
  programs.git = {
    enable = true;
    userName = "Pfeiffer Gabor";
    userEmail = "gaborpfeiffer221@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}