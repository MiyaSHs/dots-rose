{ pkgs, ... }: 
{
  home.packages = with pkgs; [
    cinny-desktop
  ];
  programs.nheko.enable = true;
}
