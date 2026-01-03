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

  # VS Code
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      esbenp.prettier-vscode
    ];

    userSettings = {
      "workbench.colorTheme" = "Solarized Dark";
      "workbench.sideBar.location" = "right";

      "editor.defaultFormatter" = "esbenp.prettier-vscode";
      "editor.formatOnSave" = true;
    };
  };
}