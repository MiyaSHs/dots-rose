{ inputs, pkgs, lib, spicetify-nix, ... }:
{
  # import the flake's module for your system
  imports = [ inputs.spicetify-nix.homeManagerModule ];
  programs.spicetify =
   let
     spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
   in
   {
     enable = true;
     enabledExtensions = with spicePkgs.extensions; [
       marketplace
       adblock
       hidePodcasts
       shuffle # shuffle+ (special characters are sanitized out of extension names)
     ];
   };
}
