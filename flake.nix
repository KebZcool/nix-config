{
  description = "My personal flake configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, nixpkgs, home-manager, ... }:
    let
       lib = nixpkgs.lib;
       system = "x86_64-linux";  
       pkgs = nixpkgs.legacyPackages.${system};
     in {
    nixosConfigurations = {
      kebOS = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ ./configuration.nix ];
      };
    };
    homeConfigurations = {
      kebzcool = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
       };
     };
      # ----- USER SETTINGS ----- #
      userSettings = rec {
        username = "kebzcool"; # username
        name = "kebzcool"; # name/identifier
        email = "keb.gaillard@proton.me"; # email (used for certain configurations)
        dotfilesDir = "~/.dotfiles"; # absolute path of the local repo      
        font = "Intel One Mono"; # Selected font
        fontPkg = pkgs.intel-one-mono; # Font package
     };
   };

}
