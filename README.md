# HOW TO GET STARTED
- Make sure nix package manager is installed.
- Make sure Home-Manager is installed.
- Remove git from ubuntu, it will be installed through home-manager.
- `rm -rf ~/.config/home-manager` and `git clone https://github.com/hitochito/home-manager `
- `home-manager switch` & make sure to `gh auth login` to push changes to github.

# Post-Install Issues
## OPEN ZSH BY DEFAULT By Adding These Lines In `.bashrc`
export SHELL=$(which zsh)
[ -f "$SHELL" ] && exec "$SHELL" -l