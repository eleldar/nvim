# Lua-based NeoVIM Configurations

## dependencies

### gihub
- NVIM (>= 0.10.0): https://github.com/neovim/neovim/releases
- font: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip
- fzf: https://github.com/junegunn/fzf

### apt
```
apt install lua5.4 liblua5.4-dev
apt install ripgrep
python3 -m pip install -U mypy
pip install python-lsp-server
pip install -U setuptools
npm install -g pyright
pip install 'python-lsp-server[all]'
```

### python
```
echo '{ "venvPath": ".", "venv": "venv" }' >> pyrightconfig.json
```

## Old
```
sudo apt update
sudo apt install nodejs
wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
./nvim-linux64/bin/nvim

python3 -m pip install -U mypy
pip install python-lsp-server
pip install -U setuptools
npm install -g pyright
pip install 'python-lsp-server[all]'
git clone https://github.com/junegunn/vim-plug (and install)
```
