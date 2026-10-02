{ config, pkgs, ... }: {
    home.file.".config/hypr/hyprland.lua".source = ./hyprland.lua;
    home.file.".config/hypr/input.lua".source = ./input.lua;
    home.file.".config/hypr/appearance.lua".source = ./appearance.lua;
    home.file.".config/hypr/keybindings.lua".source = ./keybindings.lua;
    home.file.".config/hypr/monitors.lua".source = ./monitors.lua;
    home.file.".config/hypr/myprograms.lua".source = ./myprograms.lua;
}
