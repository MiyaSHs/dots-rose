{ pkgs, ... }: 
{
  home.packages = (with pkgs; [
    pkgsCross.mingwW64.buildPackages.gcc
    gcc
    meson
    zig
  ]);
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      # Nix language
      bbenoist.nix
      # Nix-shell suport 
      arrterian.nix-env-selector
      # Python
      ms-python.python
      # C/C++
      ms-vscode.cpptools
      # OCaml
      ocamllabs.ocaml-platform
      # Zig
      ziglang.vscode-zig
      # Markdown
      yzhang.markdown-all-in-one
      # Lua
      sumneko.lua
      # Go
      golang.go
      # Rust
      rust-lang.rust-analyzer
      # Vim
      vscodevim.vim

      # Color theme
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
    ];
  };
}
