apt update && apt install -y build-essential curl wget git zsh \
vim \
python3 python3-pip golang

# Installing rust
curl https://sh.rustup.rs -sSf | sh


# Installing needed python packages
pip install -r requirements.txt --break-system-packages

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
