# New system installation
Boot nixos (possibly installer minimal live CD), then:

## HW hosts
Need to partition and label correctly. See fileSystems config for the host to see the required label names. Then mount everything under `/mnt` as per nixos instructions.

1. Enter shell with git:

```bash
nix --extra-experimental-features "nix-command flakes" shell nixpkgs#git
```

2. Clone the repo and cd inside:

```bash
git clone ${clone_url_here} config
cd config/
```

3. Apply:

```bash
sudo nixos-install --no-root-passwd --root /mnt  --flake .#<hostname_here>
```

### Some useful Nix commands:

```bash
sudo nixos-rebuild switch --flake .#nixostest
```