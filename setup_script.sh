sudo apt update && sudo apt upgrade -y
sudo apt install -y git tmux neovim python3

# install nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
#

# smart caps lock (caps lock is escape when tapped, control when held)
sudo apt install xcape
setxkbmap -option 'caps:escape'
# maybe this honestly i forgot: https://gist.github.com/tanyuan/55bca522bf50363ae4573d4bdcf06e2e

sudo apt install xsel  # for clipboard support in tmux



# custom nvim and tmux

cp .config/tmux/tmux.conf ~/.config/tmux/tmux.conf
cp .config/nvim/init.lua ~/.config/nvim/init.lua
cp -r .config/nvim/lua ~/.config/nvim/lua

