{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [ virt-manager ];
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf.packages = [ pkgs.OVMFFull.fd ];
    };
  };

  home-manager.users.simon.hydenix.hm.hyprland.extraConfig = lib.mkAfter ''bind = $mainMod, R, exec, virt-manager --connect qemu:///system --show-domain-console win11'';

  users.users.simon.extraGroups = [ "libvirtd" "libvirt" "kvm" ];
}
