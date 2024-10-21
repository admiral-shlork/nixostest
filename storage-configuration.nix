{ config, pkgs, ... }:

{
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices."luks-ae0c12ee-1019-4297-80b3-13fd8f584a5c".device = "/dev/disk/by-uuid/ae0c12ee-1019-4297-80b3-13fd8f584a5c";

  # File systems
  fileSystems."/" =
    { device = "/dev/disk/by-uuid/bd3a570c-6afe-429e-a32e-8d44e652eb5c";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."luks-99538367-5ab3-44a5-ad19-03b2b382b8ee".device = "/dev/disk/by-uuid/99538367-5ab3-44a5-ad19-03b2b382b8ee";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/2532-7046";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/2bf6e350-a2eb-4066-9b26-a6d80e8d99ab"; }
    ];
}