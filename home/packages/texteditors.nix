{ config, pkgs, ... }: {
    # install text editors
    home.packages = with pkgs; [
	vim
	neovim
	micro
    ];
}
