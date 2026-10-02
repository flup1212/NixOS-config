{ config, pkgs, ... }: {
    # install command line tools
    home.packages = with pkgs; [
	fastfetch
    	wget
    	curl
    	btop
    	mpv
    	nnn
    	eza
    ];

    programs = {
	fish = {
	    enable = true;
	    shellInit = ''
		if status is-interactive
		# Commands to run in interactive sessions can go here
		end
		
		function fish_greeting
		    fastfetch
		end
		
		alias ls='eza -al --color=always --group-directories-first' # preferred listing
		alias la='eza -a --color=always --group-directories-first'  # all files and dirs
		alias ll='eza -l --color=always --group-directories-first'  # long format
		alias lt='eza -aT --color=always --group-directories-first' # tree listing
		alias l.="eza -a | grep -e '^\.'"
	    '';
	};
    };
}
