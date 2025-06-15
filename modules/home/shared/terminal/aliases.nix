_: {
  home = {
    shellAliases = {
      c = "clear";

      mkdir = "printf '\\033[1;33m' && mkdir -pv";
      cp = "printf '\\033[1;32m' && cp -rv";
      rm = "printf '\\033[1;31m' && rm -rIv";
    };
  };
}
