{
  inputs,
  pkgs,
  ...
}:
let
  plugins = inputs.firefox-addons.packages.${pkgs.system};
in
{
  programs.firefox = {
    enable = true;

    policies = {
      SanitizeOnShutdown = {
        Cache = false;
        Cookies = false;
        History = false;
        Sessions = false;
        SiteSettings = false;
        Locked = true;
      };
    };

    profiles.default = {
      extraConfig = ''
                user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
        	user_pref("svg.context-properties.content.enabled", true);
        	user_pref("layout.css.has-selector.enabled", true);
        	user_pref("browser.urlbar.suggest.calculator", true);
        	user_pref("browser.urlbar.unitConversation.enabled", true);
        	user_pref("browser.urlbar.trimHttps", true);
        	user_pref("browser.urlbar.trimURLs", true);
      '';

      extensions.packages = with plugins; [
        privacy-badger
        darkreader
        ublock-origin
        refined-github
        enhanced-github
        clearurls
        unpaywall
        simple-translate
      ];
    };
  };
}
