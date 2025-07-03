{ pkgs, lib, ... }:

{
  imports = [
    ./mullvad.nix
    ./nextcloud.nix
    ./music.nix
  ];

  environment.systemPackages = with pkgs; [
    # pkgs.vscode - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
    unzip
  ];
}
