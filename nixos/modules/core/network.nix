{ pkgs, ... }: 
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    nftables.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [  ];
      allowedUDPPorts = [  ];
    };
  };
}
