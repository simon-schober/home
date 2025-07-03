{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
      # pkgs.vscode - hydenix's vscode version
      # pkgs.userPkgs.vscode - your personal nixpkgs version
      seahorse
      nextcloud-client
    ];


  # Enable the GNOME keyring service (Secret Service)
  services.gnome.gnome-keyring.enable = true;

  # Ensure PAM unlocks the keyring at login
  security.pam.services.login.enableGnomeKeyring = true;
  # If using a graphical display manager, enable for it too:
  security.pam.services.gdm.enableGnomeKeyring = true;
  # or for greetd, lightdm, etc.:
  # security.pam.services.greetd.enableGnomeKeyring = true;
}
