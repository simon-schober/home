{ pkgs, lib, ... }:

{
    services.mullvad-vpn.enable = true;
    services.mullvad-vpn.package = pkgs.mullvad-vpn;
    services.resolved.enable = true;
    networking.firewall.checkReversePath = "loose";
    networking.iproute2.enable = true;

    home-manager.users.simon.hydenix.hm.hyprland.extraConfig = lib.mkAfter ''exec-once = mullvad-gui'';
}
