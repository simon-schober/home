{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ virt-manager ];
  virtualisation.libvirtd = {
    allowedBridges = [
      "nm-bridge"
      "virbr0"
    ];
    enable = true;
    qemu.runAsRoot = true;
  };
}
