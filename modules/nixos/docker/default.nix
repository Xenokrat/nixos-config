{ lib, config, pkgs, inputs, ... }:

let
  cfg = config.my-docker;
in
{
  options.my-docker = {
    enable = lib.mkEnableOption "enable docker module";
  };

  config = lib.mkIf cfg.enable {
    virtualisation.containers.enable = true;
     # Enable common container config files in /etc/containers
    virtualisation = {
      docker.enable = true;
      podman = {
        enable = true;
        # Required for containers under podman-compose to be able to talk to each other.
        defaultNetwork.settings.dns_enabled = true;
      };
    };

    # Useful other development tools
    environment.systemPackages = with pkgs; [
      dive           # look into docker image layers
      podman-tui     # status of containers in the terminal
      docker-compose # start group of containers for dev
      podman-compose # start group of containers for dev
      distrobox
    ];
  };

}
