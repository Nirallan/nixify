{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    pulseaudio
    pavucontrol
  ];

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
