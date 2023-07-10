# for truly from scratch setup of a new machine (download this file and run)

sudo apt update && sudo apt upgrade -y
sudo apt install -y git

# install gh command line
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# gh CLI login
gh auth login

# setup ssh key for github
# if [ ! -f "~/.ssh/id_ed25519"]; then
  # ssh-keygen -t ed25519 -C "josh.cheng.sh@gmail.com" -f ~/.ssh/id_ed25519 -N ""
  # eval "$(ssh-agent -s)"
  # ssh-add ~/.ssh/id_ed25519
  # gh ssh-key add ~/.ssh/id_ed25519.pub
# fi

# clone this repo
git clone git@github.com:joshua2020181/dev_setup.git ~/dev_setup

