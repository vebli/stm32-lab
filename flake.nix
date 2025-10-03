{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      project_name = "stm32-lab";
  in
  {
    devShells.${system}.default = pkgs.mkShell{
        buildInputs = with pkgs; [
            gcc
            gnumake
            cmake
            gcc-arm-embedded
            stlink
            usbutils
            # stm32cubemx
        ];
    };
  };
}
