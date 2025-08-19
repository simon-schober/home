{ pkgs, lib, ... }:

{
  imports = [
    ./mullvad.nix
    ./nextcloud.nix
    ./music.nix
    ./plymouth.nix
    ./virtualization.nix
  ];

  environment.systemPackages = with pkgs; [
    # pkgs.vscode - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
    unzip
  ];
}
