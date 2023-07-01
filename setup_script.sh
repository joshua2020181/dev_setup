sudo apt update && sudo apt upgrade -y
sudo apt install -y tmux neovim python3 python3-pip curl wget

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
if [ ! -f "~/.ssh/id_ed25519"]; then
  ssh-keygen -t ed25519 -C "josh.cheng.sh@gmail.com" -f ~/.ssh/id_ed25519 -N ""
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/id_ed25519
  gh ssh-key add ~/.ssh/id_ed25519.pub
fi

# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# smart caps lock (caps lock is escape when tapped, control when held)
sudo apt install xcape
setxkbmap -option  # clear all options
setxkbmap -option 'ctrl:nocaps'
xcape -e 'Control_L=Escape'  # caps lock is escape when tapped
# maybe this honestly i forgot: https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e

sudo apt install xsel  # for clipboard support in tmux



# custom nvim and tmux

cp .config/tmux/tmux.conf ~/.config/tmux/tmux.conf
cp .config/nvim/init.lua ~/.config/nvim/init.lua
cp -r .config/nvim/lua ~/.config/nvim/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm  # tmux plugin manager

# bashrc, copy over and backup
cp ~/.bashrc ~/.bashrc.bak
cp .bashrc ~/.bashrc
source ~/.bashrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# node mostly for gh copilot
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs
