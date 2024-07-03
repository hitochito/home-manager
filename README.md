# HOW TO GET STARTED
```
sudo apt install build-essential

sh <(curl -L https://nixos.org/nix/install) --daemon
nix-channel --add https://nixos.org/channels/nixos-unstable nixos
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

nix-channel --update
nix-shell '<home-manager>' -A install

cd .config
rm -rf home-manager
git clone https://github.com/hitochito/home-manager.git
home-manager switch
```
- Make sure Home-Manager is installed.
- Remove git from ubuntu, it will be installed through home-manager.
- `rm -rf ~/.config/home-manager` and `git clone https://github.com/hitochito/home-manager `
- `home-manager switch` & make sure to `gh auth login` to push changes to github.

# Post-Install Issues
## OPEN ZSH BY DEFAULT By Adding These Lines In `.bashrc`
```
export SHELL=$(which zsh)
[ -f "$SHELL" ] && exec "$SHELL" -l
```
