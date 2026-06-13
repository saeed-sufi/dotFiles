## Ubuntu Gnome
- Install the following:
```
sudo apt install gnome-shell-extension-manager
```
[https://extensions.gnome.org/extension/307/dash-to-dock/
](https://extensions.gnome.org/extension/307/dash-to-dock/)

[https://extensions.gnome.org/extension/779/clipboard-indicator/
](https://extensions.gnome.org/extension/779/clipboard-indicator/)

[https://extensions.gnome.org/extension/973/switcher/
](https://extensions.gnome.org/extension/973/switcher/)

- Run the following to have the expected click behaviour on app icon clicks:
```
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
```
- Run the following to make the clipboard sharing available between lazyvim and ubuntu:
```
sudo apt install xclip xsel wl-clipboard
```
- Run the following to make `fdfind` available to lazyvim:
```
sudo apt install fd-find
sudo ln -s $(which fdfind) /usr/local/bin/fd
```
- Install `yazi` file manager from source:
```
cd /tmp
wget https://github.com/sxyazi/yazi/releases/latest/download/yazi-x86_64-unknown-linux-musl.zip
unzip yazi-x86_64-unknown-linux-musl.zip
cd yazi-x86_64-unknown-linux-musl
# Move both yazi AND ya to /usr/local/bin
sudo mv yazi ya /usr/local/bin/
```

## Zsh
```
sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
git clone https://github.com/jeffreytse/zsh-vi-mode ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-vi-mode

```
Then:
```
chsh -s zsh
```

## Remap caps to ctrl (gnome):
```
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"
```

## VS Code
- Place the `keybindings.json` and `settings.json` files inside the following path:
  ```
  ~/.config/Code/User/
  ```

## Docker
To drop using `sudo` before docker commands:
```
sudo groupadd docker
sudo usermod -aG docker $USER
```
And then reboot.

To change docker repos: 
```
 sudo bash -c 'cat > /etc/docker/daemon.json <<EOF
{
  "insecure-registries" : ["https://docker.arvancloud.ir"],
  "registry-mirrors": ["https://docker.arvancloud.ir"]
}
EOF'
```
- To run containers with having them survive reboots:
```
docker run -d \
  --name rabbitmq \
  -p 5672:5672 -p 15672:15672 \
  --restart unless-stopped \
  rabbitmq:management
```
```
docker run -d \
  --name mongodb \
  -p 27017:27017 \
  --restart unless-stopped \
  mongo
```
```
docker run -d \
  --name postgres \
  -p 5432:5432 \
  -e POSTGRES_USER=myuser \
  -e POSTGRES_PASSWORD=mypassword \
  --restart unless-stopped \
  postgres
```
```
docker run -d \
  --name redis \
  -p 6379:6379 \
  --restart unless-stopped \
  redis
```
```
docker run -d \
 --restart unless-stopped -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
```
- To manage everything docker in terminal install `lazydocker` by running this:
```
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
```

## Python

- Install it using [Pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#linuxunix):
```
sudo apt update && sudo apt upgrade -y

sudo apt install -y \
build-essential curl git \
libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev \
libffi-dev liblzma-dev \
tk-dev tcl-dev uuid-dev \
xz-utils ca-certificates
```
and then add the following to `.zshrc`:
```
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
```
- and then:
```
pyenv install 3.10.12
pyenv global 3.10.12  # Set it as the default
```
- or inside a project dir, first set a local python version:
```
pyenv local 3.12.8
```
- And then create a new env and source it:
```
python3 -m venv myenv
source myenv/bin/activate
```
- Install jupyter and run it:
```
pip install jupyterlab
jupyter-lab
```
- Install useful python tools:
```
pip install numpy pandas matplotlib seaborn scikit-learn
```
- Create a `.gitignore` file:
```
venv/
__pycache__/
*.pyc
```

## Node
- Install[ n (node version manager)](https://github.com/tj/n?tab=readme-ov-file#installation):
```
curl -fsSL -o /usr/local/bin/n https://raw.githubusercontent.com/tj/n/master/bin/n 
chmod 0755 /usr/local/bin/n
n install lts
```
- To delete all the `node_modules` folders inside a specific directory run this:
```
find /path/to/your/project -name "node_modules" -type d -prune -exec rm -rf '{}' +
```
- To run any `ts` file:
```
npm i -D tsx
npx tsx src/index.ts
```
## Terminal
- Install [Kitty](https://sw.kovidgoyal.net/kitty/binary/)
- To make Kitty work with ssh terminals run the following:
```
kitty +kitten ssh <ip address>
```
- use this when ssh into a server in kitty for the first time: `kitty +kitten ssh m90dev`

## Github repos
- To search among github repositories:
```
geology OR "geological modeling" OR "geoscience" language:Python
```
