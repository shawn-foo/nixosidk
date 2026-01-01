{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  services.displayManager.defaultSession = "hyprland";

  environment.systemPackages = with pkgs; [
    qt6.qtwayland
    qt5.qtwayland
    libsForQt5.qt5ct
    glib
    wayland
    wayland-utils
    wayland-scanner
    wl-clipboard
    libnotify
  ];
}
