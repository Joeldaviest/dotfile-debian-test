# NALA
sudo apt install nala -y

# GENERAL
sudo nala install alacritty i3 polybar xorg xinit gh pciutils firefox wget gpg thunar apt-transport-https pulseaudio python3.11-pip python3.11-venv build-essential libssl-dev libffi-dev python3-dev -y

# VSCODE
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo nala update
sudo nala install code
