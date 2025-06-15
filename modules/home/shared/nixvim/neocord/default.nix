_: {
  programs.nixvim.plugins.neocord = {
    enable = true;
    settings = {
      auto_update = true;
      client_id = "1157438221865717891";
      debounce_timeout = 10;

      editing_text = "✏️ Editing %s";
      reading_text = "📖 Reading %s";
      file_explorer_text = "📁 Browsing through %s";
      terminal_text = "🖥️ Using The Terminal";
      git_commit_text = "📤 Committing %s";
      plugin_manager_text = "🔌 Managing %s";
      workspace_text = "🧱 Working on %s";
      line_number_text = "📍 Line %s of %s";

      enable_line_number = true;
      show_time = true;
      global_timer = true;

      main_image = "logo";
      logo = "https://repository-images.githubusercontent.com/325421844/ecb73f47-cb89-4ee0-a0fd-9743c2f3569a";
      logo_tooltip = "The One True Editor";

      file_assets = null;
      log_level = null;
    };
  };
}
