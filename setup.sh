if [ "$USER" != "root" ]
then
	echo "Please run this with sudo!"
	return 
fi

# Mostyle a copy from https://github.com/Wrench56/.config/blob/master/.setup/setup.sh adapted to my own needs.

RED='\033[31m'
NOCOLOR='\033[0m'
BLUE='\033[34;1m'

# Updating
echo "Updating..."
apt update
apt upgrade

# Installs dependencies
echo "Installing build-essential and other dependencies"
apt install build-essential checkinstall \ 
    libreadline-gplv2-dev  libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

# Installs Git
echo "Installing GIT"
apt get git

# Adds the Deadsnakes Repository to Install Python 3.11
echo "Adding PPA:deadsnakes/ppa"
add-apt-repository ppa:deadsnakes/ppa

# Installs Python 3.11
echo "Installing Python 3.11"
apt install python3.11

# Installs exa
echo "Installing exa"
apt install exa

# Installs Oh My Posh and set folder permissions
echo "Installing oh-my-posh"
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
echo "setting folder permissions"
chmod +x /usr/local/bin/oh-my-posh

# Download Oh My Posh themes
echo "Downloading themes to ~/.poshthemes"
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

# Installs Neofetch
echo "Installing Neofetch"
apt install neofetch

# Installs htop
echo "Installing htop"
apt install htop

# Download FUSE (https://github.com/AppImage/AppImageKit/wiki/FUSE)
echo "Downloading and installing FUSE"
sudo add-apt-repository universe
sudo apt install libfuse2

# Install cargo
echo "Installing cargo"
sudo apt-get install cargo

# Install NodeJS
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash
sudo apt-get install -y nodejs

# Install neovim (unstable)
echo "Adding Unstable Nvim Repository and Installing it"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


# Installs NVIM Plugins
echo "Installing NVIM Plugins"
 # Update pynvim
    pip install pynvim --upgrade

    # Install ripgrep (for telescope)
    sudo apt-get install ripgrep

    # Install fd (for telescope)
    sudo apt-get install fd-find

    # Install tree-sitter (with cargo)
    cargo install tree-sitter-cli

echo -e "${RED}Paste these lines on your .bashrc file${NOCOLOR}"
echo
echo -e "\n${BLUE}To initi oh-my-posh:${NOCOLOR}"
echo "eval \"\$(oh-my-posh init bash)\"
export GPG_TTY=\$(tty)"
echo
echo -e "\n${BLUE}To add exah (shows hidden files) shortcut for exa -a --icons${NOCOLOR}"
echo "alias exah='exa -a --icons'"
echo
echo -e "\n${BLUE}To add the changeposhtheme command:${NOCOLOR}"
echo "changeposhtheme () {
    eval \"\$(oh-my-posh init bash --config ~/.poshthemes/\$1.omp.json)\"
}"
echo
echo -e "\n${BLUE}To add the workdir cdable variable:${NOCOLOR}"
echo "shopt -s cdable_vars
export workdir=/mnt/d/Users/arthu/Documents/Programming"
echo
echo -e "${RED}Paste these lines on your .profile file${NOCOLOR}"
echo
echo -e "\n${BLUE}To init Oh-My-Posh and Set a Theme on Startup${NOCOLOR}"
echo "eval \"\$(oh-my-posh init bash)\"
eval \"\$(oh-my-posh init bash --config ~/.poshthemes/di4am0nd.omp.json)\""

