{ config, pkgs, ... }:

{
 # Machine virtuelle VMware
  virtualisation.vmware.host.enable = true;

  virtualisation.vmware.guest = {
    enable = true;
    headless = true;
  };
}

