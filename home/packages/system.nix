{ config, pkgs, ... }: {
    # install system tools
    home.packages = with pkgs; [
    	brightnessctl
    	playerctl
    	wl-clipboard
    	waybar
	hyprpaper
    	wvkbd
    	wofi
    	dunst
    ];

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
    programs = {
	git.enable = true;
    };
}
