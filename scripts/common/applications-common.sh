# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"


#Tools
echo
echo "Install Git..."
brew install git

echo
echo "Install Maven..."
brew install maven

echo
echo "Install CF-CLI..."
curl -L "https://packages.cloudfoundry.org/stable?release=macosx64-binary&version=7.4.0&source=github-rel" | tar -zx
sudo mv cf* /usr/local/bin/

echo
echo "Intall Safe..."
brew install starkandwayne/cf/safe

brew install grc
brew install tree
brew install wget
brew install nvm

# Utilities

echo
echo "Install ShiftIt..."
brew install shiftit
echo
echo "Install Miro..."
brew install miro


# Text Editors
echo
echo "Install Sublime Text Editor..."
brew install sublime-text
echo
echo "Install Jetbrains Toolbox..."
brew install jetbrains-toolbox

brew install vim
echo
echo "Installing vim configuration"
pushd ~/
if [ ! -d ~/.vim ]; then
    git clone https://github.com/pivotal/vim-config.git ~/.vim
    ~/.vim/bin/install
fi
popd
set -e