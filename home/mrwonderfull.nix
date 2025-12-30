{ pkgs, ... }:

{
  home.username = "mrwonderfull";
  home.homeDirectory = "/home/mrwonderfull";

  home.stateVersion = "25.11";

  # Git
  programs.git = {
    enable = true;
    userName = "Gabor Pfeiffer";
    userEmail = "gaborpfeiffer221@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}