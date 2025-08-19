{ lib, pkgs, ... }: {
  security.polkit.enable = true;
  environment.systemPackages = with pkgs; [
    polkit
    polkit_gnome
  ];

  home-manager.users.simon.hydenix.hm.hyprland.extraConfig = lib.mkAfter ''exec-once = ${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1 &'';
}
