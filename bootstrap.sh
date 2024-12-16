# The aim of this bash script is to install the nix package manager and
# the tool home-manager into a fresh installed crostini linux development
# environment.

# Upgrade debian packages
sudo apt update
sudo apt upgrade --yes

# Remove unnecessary debian packages
sudo apt purge --yes vim
sudo apt install --yes vim-tiny 
sudo apt purge --yes python3
sudo apt autopurge --yes

# Pin set of installed debian packages 
sudo apt install --yes debfoster
sudo debfoster --quiet

# Install nix
curl -L https://nixos.org/nix/install | sh -s -- --daemon

# Source the nix environment (because no new login)
. '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'

# Test invocation of nix
nix --version

# Install home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# Test invocation of home-manager
home-manager --version

# Download content of repository as $HOME/home-manager
rm -rf $HOME/home-manager-main
curl -L github.com/armin-joellenbeck/home-manager/archive/master.tar.gz \
  | tar --directory=$HOME --extract --gzip 
rm -rf $HOME/home-manager
mv $HOME/home-manager-main $HOME/home-manager

# Link home-manager config
rm -rf $HOME/.config/home-manager
ln -sr $HOME/home-manager $HOME/.config

# Apply home-manager config
home-manager switch

# Authenticate against GitHub
gh auth login --hostname github.com --git-protocol https --web

# Replace content of repository by real clone
rm -rf $HOME/home-manager
gh repo clone armin-joellenbeck/home-manager $HOME/home-manager

# Apply home-manager config again, just in case that the main branch
# has changed between downloading and cloning
home-manager switch
