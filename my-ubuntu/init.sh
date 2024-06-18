apt update && apt install -y build-essential curl wget git zsh \
vim \
python3 python3-pip 

# Installing needed python packages
pip install -r requirements.txt --break-system-packages
