{ ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./blank-configuration/hardware-configuration.nix
      ./blank-configuration/storage-configuration.nix
      ./blank-configuration/networking-configuration.nix
      ./blank-configuration/misc-configuration.nix
      ./blank-configuration/software-configuration.nix
    ];
}
