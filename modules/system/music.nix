{ pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    ardour
    vital
    lsp-plugins
    surge-XT
    dragonfly-reverb
    calf
    helm
    zynaddsubfx
    hydrogen
    x42-plugins
  ];
  musnix.enable = true;
  users.users.simon.extraGroups = [ "audio" ];
}
