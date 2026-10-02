{ config, pkgs, ... }: {
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users."levi" = {
      isNormalUser = true;
      description = "Levi Pippel";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
      shell = pkgs.fish;
    };
}
