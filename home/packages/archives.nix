{ config, pkgs, ... }: {
    # install archive tools
    home.packages = with pkgs; [
    	zip
	unrar
	p7zip
    ];
}
