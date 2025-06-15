{
  pkgs,
  ...
}:
{
  programs.nixvim = {
    extraPlugins = with pkgs.vimPlugins; [
      dressing-nvim
    ];
  };
}
