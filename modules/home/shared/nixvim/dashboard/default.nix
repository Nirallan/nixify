_: {
  programs.nixvim.plugins.dashboard = {
    enable = true;
    settings = {
      change_to_vcs_root = true;
      theme = "hyper";
      config = {
        project.enable = true;
        packages.enable = false;
        week_header.enable = true;
        mru.limit = 10;

        shortcut = [
          {
            key = "e";
            action = "ene";
            icon = " ";
            group = "Label";
            desc = "New File";
          }
          {
            key = "ff";
            action = "Telescope find_files";
            icon = "󰱼 ";
            group = "Label";
            desc = "Find File";
          }
          {
            key = "fs";
            action = "Telescope live_grep";
            icon = " ";
            group = "DiagnosticHint";
            desc = "Find Word";
          }
          {
            key = "wr";
            action = "SessionRestore";
            icon = "󰝳 ";
            group = "Number";
            desc = "Restore Session";
          }
          {
            key = "q";
            action = "quitall!";
            icon = "󰈆 ";
            group = "DiagnosticError";
            desc = "Quit NixVim";
          }
        ];

        footer = [
          ""
          ""
          "Don't Stop Until You Are Proud"
          ""
        ];
      };
    };
  };
}
