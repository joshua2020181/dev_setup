cp ~/.bashrc .
cp ~/.bash_aliases .
cp ~/.zshrc .

mkdir -p .config/tmux
mkdir -p .config/nvim/lua
mkdir -p .config/personal
cp ~/.config/tmux/tmux.conf .config/tmux/tmux.conf
cp ~/.config/nvim/init.lua .config/nvim/
cp ~/.config/nvim/lazy-lock.json .config/nvim/
cp -r ~/.config/nvim/lua/ .config/nvim/
cp -r ~/.config/personal/ .config/
