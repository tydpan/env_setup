version=$( zsh --version )
if [ $? -ne 0 ]; then
    # for linux becuase zsh has became default shell in new OS
    sudo apt install zsh
    chsh -s $(which zsh) # set to default shell
    version=$( zsh --version )
fi
echo "$version"

# Oh-My-Zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed "s/ZSH_THEME=.*/ZSH_THEME=\"clean\"/" $HOME/.zshrc # my theme

