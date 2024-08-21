{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    gtrash                            # rm replacement, put deleted files in system trash
    libreoffice
    cmatrix
    gparted                           # partition manager
    killall
    man-pages		              # extra man pages
    pamixer
    pavucontrol                       # pulseaudio volume controle (GUI)
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    cliphist                          # clipboard manager
    qalculate-gtk                     # calculator
    unzip
    unrar
    appimage-run
    xdg-utils
    xorg.xeyes
    protonup-qt
    obs-studio
    miru
    ryujinx
    lutris
    signal-desktop
    xivlauncher
    blender
    krita
    qbittorrent
    wineWowPackages.stagingFull
    dxvk
    vkd3d
    protontricks
    adwsteamgtk
    easyeffects
    qpwgraph
    vulkan-tools
    wget
    selectdefaultapplication
    catppuccinifier-gui
    catppuccinifier-cli
    element-desktop
    upscayl
    ani-cli
    xfce.thunar
    kdePackages.qtstyleplugin-kvantum
    python3
    nemo-with-extensions
    spotify
    youtube-music
    piper
    mangohud
    cpu-x
    zed-editor
    pcsx2
    yquake2
    xdg-desktop-portal-gtk
  ]);
}
