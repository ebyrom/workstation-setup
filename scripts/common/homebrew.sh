echo

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Install Homebrew from DSG Self Service Portal"
fi

echo
echo "Ensuring you have the latest Homebrew..."
brew update

echo
echo "Installing Homebrew services..."
brew tap homebrew/services

echo
echo "Adding Pivotal tap to Homebrew..."
brew tap pivotal/tap

echo
echo "Adding cloudfoundry tap to Homebrew..."
brew tap cloudfoundry/tap

echo
echo "Adding StarkAndWayne/cf tap to Homebrew..."
brew tap starkandwayne/cf

echo
echo "Upgrading existing brews..."
brew upgrade

echo "Cleaning up your Homebrew installation..."
brew cleanup

echo
echo "Adding Homebrew's sbin to your PATH..."
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile
