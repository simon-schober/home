{ pkgs, lib, ... }:

{
  imports = [
    ./mullvad.nix
    ./nextcloud.nix
    ./music.nix
    ./plymouth.nix
    ./virtualization.nix
    ./polkit.nix
    ./printing.nix
    ./flatpak.nix
    ./logind.nix
  ];

  environment.systemPackages = with pkgs; [
    # pkgs.vscode - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
    unzip
  ];
}
