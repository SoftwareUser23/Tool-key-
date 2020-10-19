#!/bin/bash
# by software_user <3
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}


if [ $UID -ne 0 ]
then
	RED "Please run this script as root!" && echo
	exit
fi

GREEN "Updating repositories..."
sudo apt update

GREEN "Installing git"

sudo apt install -y git 

GREEN "Installing terminator"
sudo apt install -y terminator

GREEN "Installing snap"
sudo apt install -y snap


GREEN "Installing VS-Code"
sudo snap install code --classic

GREEN "Installing Sublime-Text"
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
sudo echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

GREEN "Installing curl"
sudo apt install -y curl


GREEN "Updating python and installing pip"
sudo apt-get install -y python
sudo apt-get install -y python3
sudo apt install -y python3-pip

GREEN "Installing Atom"

wget https://atom.io/download/deb
sudo dpkg --install deb
sudo apt --fix-broken -y install
sudo apt install -y libgconf-2-4
sudo dpkg --install deb 
rm deb 

GREEN "Installing VIM" 
sudo apt install -y vim 

GREEN "Installing Pluma"
sudo apt install -y pluma 

GREEN "Installing discord"
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg --install discord.deb 
sudo apt --fix-broken -y install
sudo dpkg --install discord.deb 
rm discord.deb

GREEN "Installing Telegran-Desktop"
wget https://telegram.org/dl/desktop/linux
tar xvf linux
cp Telegram/Telegram T_G
./T_G 
rm -rf Telegram/
rm -rf linux


GREEN "Installing OBS-STUDIO"
sudo apt install -y ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt -y update
sudo apt install -y obs-studio

GREEN "Installing tmux"
sudo apt install -y tmux

GREEN "Installing Brave-Browser"
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


GREEN "Installing Teamviewer"
wget "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
sudo dpkg --install teamviewer_amd64.deb
sudo apt-get install -fy
sudo dpkg --install teamviewer_amd64.deb
rm teamviewer_amd64.deb 

GREEN "Installing Spotify"
sudo snap install spotify

GREEN "Installing Virtual-Box"
sudo apt install virtualbox-qt -y
sudo apt install google-chrome 

 
GREEN "Installing locate"
sudo apt install mlocate

echo "Thanks for using"
