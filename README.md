# NeoVIM Configurations

## Install

### gihub
- NVIM (>= 0.10.0): https://github.com/neovim/neovim/releases:
  - `wget https://github.com/neovim/neovim/releases/download/v0.11.3/nvim-linux-x86_64.tar.gz`
  - `tar xzvf nvim-linux-x86_64.tar.gz`
  - `sudo mv nvim-linux-x86_64 /opt/nvim`
  - `sudo ln -s /opt/nvim/bin/nvim /usr/local/bin/nvim`
- font: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip

### packages
```
sudo apt install fzf ripgrep nodejs npm python3-pip python3.12-venv lua5.4 liblua5.4-dev
sudo npm install -g pyright
pip install -U setuptools
```

### python
```
echo '{ "venvPath": ".", "venv": ".venv" }' >> pyrightconfig.json
```

## Using
- Copilot: `to-do`
- Gen: `to-do`
- LLM: `to-do`
