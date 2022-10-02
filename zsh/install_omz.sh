version=$(zsh --version)
if [ $? -ne 0 ]; then
    # for linux becuase zsh has became default shell in new OS
    sudo apt install -y zsh
    chsh -s $(which zsh) # set to default shell
    version=$(zsh --version)
fi
echo "$version"

# Oh-My-Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sed -i "s/ZSH_THEME=.*/ZSH_THEME=\"clean\"/" $HOME/.zshrc # my theme
conda="$(which conda)"
if [ $? -e 0 ]; then
    "$conda" init zsh
fi