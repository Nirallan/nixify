_: {
  programs.nixvim.plugins.colorizer = {
    enable = true;
    settings = {
      filetypes = {
        __unkeyed = "*";
      };
      user_default_options = {
        names = true;
        RRGGBBAA = true;
        AARRGGBB = true;
        rgb_fn = true;
        hsl_fn = true;
        css = true;
        css_fn = true;
        tailwind = true;
        mode = "virtualtext";
        virtualtext = "■";
        always_update = true;
      };
    };
  };
}
