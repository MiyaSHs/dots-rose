{ pkgs, ... }: 
{
  services = {
    gnome-keyring.enable = true;
    gnome-keyring.components = [ "secrets" ];
  };
  home.packages = [ pkgs.polkit_gnome ];
}
