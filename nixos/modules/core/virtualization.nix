{ config, pkgs, username, ... }:
{
  # Add user to libvirtd group
  users.users.${username}.extraGroups = [ "libvirtd" "kvm" "adbusers" ];

  # Install necessary packages
  environment.systemPackages = with pkgs; [
    win-spice
    gnome.gnome-boxes
    virtualbox
    spice-gtk
    spice
  ];
  
  programs.virt-manager.enable = true;
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };
  services.spice-vdagentd.enable = true;

  # ADB
  programs.adb.enable = true;
}
