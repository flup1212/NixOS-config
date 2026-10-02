{ config, pkgs, ... }: {
    # install user programs
    home.packages = with pkgs; [
    	vivaldi
    	thunar
    	vlc
    ];

    programs = {
	kitty = {
	    enable = true;
	    extraConfig = ''
		${builtins.readFile ../conf.d/kitty.conf}
	    '';
	};
    };
}
