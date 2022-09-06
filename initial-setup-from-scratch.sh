# Install brew only if its not present
[ ! -f "`which brew`" ] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sh install-brew-packages.sh

sh configure-jump-in-fish.sh

sh setup-global-git-profile.sh