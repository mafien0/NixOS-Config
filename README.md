# WIP
not recommended to use



# Intallation

### Recommend to fork this repository and change usernames to yours
inside of [flake.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/flake.nix)
> Dont forget to run `nix flake update` after changing flake

inside of [nixos/modules/user.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/nixos/modules/user.nix)

inside of [home-manager/home.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/home-manager/home.nix)

inside of [home-manager/modules/git/default.nix](https://github.com/Mafien01/NixosHyprConf/blob/main/home-manager/modules/git/default.nix): name and mail

and copy your `hardware-configuration.nix` into nixos/hardware-configuration.nix

and after, in instalation clone not my repository, but yours


### Clone repostory as ~/nix
```
git clone https://github.com/Mafien01/NixosHyprConf ~/nix
```

### Rebuild nixos using ~/nix flake
```
sudo nixos-rebuild boot --flake ~/nix
```
### Switch home manager using ~/nix flake
```
home-manager switch --flake ~/nix
```

### Reboot




