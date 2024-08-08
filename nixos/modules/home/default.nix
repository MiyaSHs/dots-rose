{inputs, username, host, ...}: {
  imports =
       [(import ./catppuccin.nix)]                # Automatic Catppuccin theming
    ++ [(import ./matrix.nix)]                    # matrix clients
    ++ [(import ./browsers.nix)]                  # Browsers
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./hyprland)]                      # window manager
    ++ [(import ./mako.nix)]                      # notification deamon
    ++ [(import ./nvim.nix)]                      # neovim editor
    ++ [(import ./mpv.nix)]
    ++ [(import ./imv.nix)]
    ++ [(import ./vscodium.nix)]
    ++ [(import ./keyring.nix)]
    ++ [(import ./packages.nix)]                  # other packages
    ++ [(import ./waybar)]                        # status bar
    ++ [(import ./wofi.nix)]                      # launcher
    ++ [(import ./terminal.nix)];
}
