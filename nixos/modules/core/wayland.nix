{ inputs, pkgs, lib, ... }:
{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
  };
  services.desktopManager.plasma6.enable = true;
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "colemak_dh_iso";
    };
    displayManager.setupCommands = 
    "
    xrandr --output HDMI-A-1 --rate 240
    ";
  };
  services.displayManager = {
    sddm.enable = true;
    sddm.package = lib.mkDefault pkgs.kdePackages.sddm;
    sddm.wayland.enable = true;
  };
}
