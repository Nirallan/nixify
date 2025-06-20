_: {
  programs.nixvim.plugins.copilot-lua = {
    enable = true;
    panel = {
      enabled = false;
      autoRefresh = true;
      keymap = {
        jumpPrev = "[[";
        jumpNext = "]]";
        accept = "<CR>";
        refresh = "gr";
        open = "<M-CR>";
      };
      layout = {
        position = "bottom";
        ratio = 0.4;
      };
    };
    suggestion = {
      enabled = false;
      autoTrigger = true;
      debounce = 75;
      keymap = {
        accept = "<M-l>";
        acceptWord = false;
        acceptLine = false;
        next = "<M-]>";
        prev = "<M-[>";
        dismiss = "<C-]>";
      };
    };
    filetypes = {
      yaml = false;
      markdown = false;
      help = false;
      gitcommit = false;
      gitrebase = false;
      hgcommit = false;
      svn = false;
      cvs = false;
      "." = false;
    };
    copilotNodeCommand = "node";
    serverOptsOverrides = { };
  };
}
