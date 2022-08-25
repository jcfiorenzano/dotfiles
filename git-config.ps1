# Configuration improvements
git config core.fsmonitor true # improves commands performance in large repos
git config --global --add --bool push.autoSetupRemote true # remove the need to od a push --upstream if the branch doesn't exist in origin
# Command alias
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.b branch
git config --global alias.st status
git config --global alias.track "checkout --track "
git config --global alias.lg "log --color  --pretty=format:'%Cred%h%Creset - %Cgreen%cD-(%cr)%Creset - %C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit "


