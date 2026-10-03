{ config, pkgs, ... }: {
    # install user programs
    home.packages = with pkgs; [
    	vivaldi
	firefox
    	thunar
    	vlc
	asunder
	feishin
	kdePackages.filelight
    ];

    programs = {
	kitty = {
	    enable = true;
	    extraConfig = ''${builtins.readFile ../conf.d/kitty.conf}'';
	};
    };
}
