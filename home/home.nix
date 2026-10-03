{ config, pkgs, ... }: {
    imports = [
	./packages
	./hyprland
	./niri
    ];

    home.username = "levi";
    home.homeDirectory = "/home/levi";
    
    home.stateVersion = "26.05";
    programs.home-manager.enable = true;
    programs.git.enable = true;
}
