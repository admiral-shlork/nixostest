# New system installation

## Prerequisites
Make sure to partition and label everything correctly. See `fileSystems` config for the host to see the required label names.

1. Boot NixOS from a Live CD

2. Enter shell with git:

```bash
nix --extra-experimental-features "nix-command flakes" shell nixpkgs#git
```
3. Mount all required partitions under `/mnt`.

4. Clone the repo with the configuration:

```bash
git clone ${clone_url_here}
```

5. To install the OS run the following command from the root folder of the cloned repository:

```bash
sudo nixos-install --no-root-passwd --root /mnt  --flake .#hostname
```

## Some useful Nix commands:

- Apply configuration from a Flake and rebuild the OS
```bash
sudo nixos-rebuild switch --flake .#hostname
```

- Remove older generations from the bootloader
```bash
nix-collect-garbage --delete-older-than 8h
sudo nixos-rebuild boot
```
