{ pkgs, ... }:

{
  home.username = "mrwonderfull";
  home.homeDirectory = "/home/mrwonderfull";

  home.stateVersion = "25.11";

  # Git
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Pfeiffer Gabor";
        email = "gaborpfeiffer221@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };

  # VS Code
  programs.vscode = {
    enable = true;

    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        esbenp.prettier-vscode
      ];

      userSettings = {
        "workbench.colorTheme" = "Solarized Dark";
        "workbench.sideBar.location" = "right";
        
        "editor.formatOnSave" = true;
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
    };
  };
}