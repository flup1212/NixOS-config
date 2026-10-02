{ config, pkgs, ... }: {
    # Use the systemd-boot EFI boot loader.
    boot.loader = {
	systemd-boot.enable = false;
	efi.canTouchEfiVariables = true;
    	limine.enable = true;
    	limine.style.wallpapers = [ "/home/levi/.config/nixos/wallpaper.png" ];
	limine.style.graphicalTerminal.background = "ffffffff";
    };

    # Use latest kernel.
    # boot.kernelPackages = pkgs.linuxPackages_latest; # commented because im using the ms surface kernel
}
