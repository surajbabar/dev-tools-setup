cp global-gitignore ~/.config/
cp git-aliases ~/.config/

git config --global core.excludesFile '~/.config/global-gitignore'
git config --global 'multi.groupbyoutput' 1
read -p "Enter Git User Name to be configured globally: "  userName
read -p "Enter Git Email to be configured globally: "  userEmail
git config --global user.name "$userName"
git config --global user.email "$userEmail"

grep -qF 'source ~/.config/git-aliases' ~/.config/fish/config.fish || echo "source ~/.config/git-aliases" >> ~/.config/fish/config.fish
