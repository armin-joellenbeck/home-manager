# My home-manager configuration for Linux on ChromeOS


## Bootstrap a new Linux develop environment

Install the Linux development environment on ChromeOS,
see ChromeOS manual (TODO).

In this environment install the nix package manager and
the configuration tool home-manager by executing the following
shell command:
```
curl https://raw.githubusercontent.com/armin-joellenbeck/home-manager/main/bootstrap.sh | bash
```

Then open a new console.

There is now a clone of this repository.

## Update base system
To update the debian base system execute:
```
sudo apt update
sudo apt upgrade
```

## Update nix package manager
To update `nix` and its companions execute:
```
nix-channel --update
nix-env --install --attr nixpkgs.nix nixpkgs.cacert
sudo systemctl daemon-reload
sudo systemctl restart nix-daemon
```

## Update home-manager
To update `home-manager` itself execute:
```
nix-channel --update
home-manager switch
```

## Update home-manager configuration
To change the configuration edit the file `home-manager/home.nix` and related files.

Then execute:
```
home-manager switch
```
