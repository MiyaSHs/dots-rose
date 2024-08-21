{ inputs, pkgs, lib, ... }:
{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = pkgs.xdg-desktop-portal-wlr;
  };
  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "colemak_dh_iso";
    };
  };
}
