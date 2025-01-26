{ config, pkgs, ... }:


{
  # Enable Tor service
  services.tor.enable = true;

  #Configure Tor as a relay or bridge (optionel)
  #services.tor.relay = {
   # enable = true;
   # nickname = "your-relay-name";
   # contactInfo = "your-email@example.com";
    # Advanced settings
    # bwWeight = 10;
    # relayBandwidthRate = 1024;
    # relayBandwidthBurst = 2048;
 
 # Custom torrc configuration (optional)
 # services.tor.config = ''
    # Custom torrc configurations
   # Log notice file /var/log/tor/notices.log
   # RunAsDaemon 1
   # DataDirectory /var/lib/tor
  #'';

  # Ensure the necessary ports are open (e.g., for SOCKS proxy)
  networking.firewall.allowedTCPPorts = [ 9050 ];

  # If you want to configure DNS resolution via Tor
  # networking.dns.nameservers = [ "127.0.0.1" ];
  
  # Install Tor package and proxy utilities
  environment.systemPackages = with pkgs; [
    tor
    torsocks
    tor-browser

  ];

}

