{ pkgs, lib, ... }:

{
  services.spice-vdagentd.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf.packages = [ pkgs.OVMFFull.fd ];
      vhostUserPackages = with pkgs; [ virtiofsd ];
    };
  };

  programs.virt-manager.enable = true;

  environment.systemPackages = with pkgs; [
    virt-manager
    spice-gtk
    virt-viewer
  ];

  security.wrappers.spice-client-glib-usb-acl-helper = {
    owner = "root";
    group = "root";
    capabilities = "cap_fowner+ep";
    source = "${pkgs.spice-gtk}/bin/spice-client-glib-usb-acl-helper";
  };

  home-manager.users.simon.hydenix.hm.hyprland.extraConfig = lib.mkAfter ''bind = $mainMod, R, exec, virt-manager --connect qemu:///system --show-domain-console win11'';

  users.users.simon.extraGroups = [ "libvirtd" "libvirt" "kvm" ];
}
