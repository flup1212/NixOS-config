{ config, pkgs, ... }: {
    # install system tools
    home.packages = with pkgs; [
    	brightnessctl
    	playerctl
    	wl-clipboard
	cliphist
    	waybar
	hyprpaper
    	wvkbd
    	dunst
    ];

    programs = {
	wofi = {
	    enable = true;
	    settings = { };
	    style = ''${builtins.readFile ../conf.d/wofi/style.css}'';
	};
    };

    services = {
	awww.enable = true;
	hyprpaper = {
	    enable = true;
	    settings = {
		splash = false;
		wallpaper = [
		    {
			monitor = ''eDP-1'';
			path = ''~/.config/nixos/wallpaper.png'';
		    }
		];
	    };
	};
    };
}
