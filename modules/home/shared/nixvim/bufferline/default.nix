_: {
  programs.nixvim.plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        mode = "buffers";
        separatorStyle = "none";
        offsets = [
          {
            filetype = "NvimTree";
            text = "File Explorer";
            text_align = "center";
            padding = 1;
          }
        ];
      };

      highlights = {
        buffer_selected = {
          italic = false;
        };

        buffer_visible = {
          italic = false;
        };

        buffer = {
          italic = false;
        };
      };
    };
  };
}
