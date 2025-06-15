_: {
  programs.nixvim = {
    plugins = {
      nvim-tree = {
        enable = true;
        disableNetrw = true;
        hijackCursor = true;
        syncRootWithCwd = true;

        updateFocusedFile = {
          enable = true;
          updateRoot = false;
        };

        renderer = {
          rootFolderLabel = false;
          highlightGit = true;
          indentMarkers.enable = true;

          icons.glyphs = {
            default = "󰈚";
            folder = {
              default = "";
              empty = "";
              emptyOpen = "";
              open = "";
              symlink = "";
            };
            git = {
              deleted = "";
              ignored = "";
              renamed = "";
              staged = "✓";
              unmerged = "";
              unstaged = "";
              untracked = "◌";
            };
          };
        };

        actions.windowPicker.enable = false;
      };
    };

    keymaps = [
      {
        key = "<leader>ee";
        mode = "n";
        action = "<cmd>NvimTreeToggle<cr>";
        options.desc = "Toggles The File Explorer";
      }
      {
        key = "<leader>ef";
        mode = "n";
        action = "<cmd>NvimTreeFindFileToggle<cr>";
        options.desc = "Toggles The File Explorer On The Current File";
      }
      {
        key = "<leader>ec";
        mode = "n";
        action = "<cmd>NvimTreeCollapse<cr>";
        options.desc = "Collapses The File explorer";
      }
      {
        key = "<leader>er";
        mode = "n";
        action = "<cmd>NvimTreeRefresh<cr>";
        options.desc = "Refreshes The File Explorer";
      }
    ];
  };
}
