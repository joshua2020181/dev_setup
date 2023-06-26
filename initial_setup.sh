# for truly from scratch setup of a new machine (download this file and run)

sudo apt update && sudo apt upgrade -y
sudo apt install -y git

git clone https://github.com/joshua2020181/dev_setup.git
cd dev_setup
chmod +x *.sh 
sudo ./setup_script.sh

