# Importing Keys
wget -q -O - https://archive.kali.org/archive-key.asc | sudo apt-key add
echo "[*] + Updating and Upgrading"
# sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update
sudo apt-get --yes --allow -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade
sudo apt-get --yes --allow -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
cd /home/vagrant
sudo apt-get update --fix-missing
sudo apt-get upgrade -y
# Setting up stuffs
echo "[*] Installing Basic Tools"
sudo apt install curl wget git zsh python3-pip tmux neovim vim gpg -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "[*] Installing p10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i.bak "s/\"robbyrussell\"/\"powerlevel10k\/powerlevel10k\"/" .zshrc
echo "[*] Fetching tmux config"
cd /home/vagrant ; wget -c https://raw.githubusercontent.com/Aeres-u99/CluelessOnes-CTFVM/main/.tmux.conf
# sudo chsh
# Installing the tools
echo "[*] Installing hacking tools"
sudo apt install radare2 john binwalk nmap sublist3r gobuster gdb hashcat bettercap exif python3-venv -y
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
pip install -U ptpython
export PATH=$PATH:/home/vagrant/.local/bin
echo '[*] Preparing Neovim config directory ...'
mkdir -p ~/.config/nvim
echo '[*] Installing Python dependencies in a virtual environment ...'
python3 -m venv ~/.config/nvim/env
source ~/.config/nvim/env/bin/activate
pip install wheel
deactivate
echo '[*] Downloading vim-plug, the best minimalistic vim plugin manager ...'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl https://raw.githubusercontent.com/Aeres-u99/dotfiles/master/nvim/init.vim > /home/vagrant/.config/nvim/init.vim
nvim -c 'PlugInstall' -c 'qa'
