DOT_VIM_FOLDER=~/.vim
GIT="hash git >/dev/null && /usr/bin/env git $1"

cd $DOT_VIM_FOLDER
echo "\033[0;32mFetching changes...\033[0m"
eval $GIT "pull --rebase --stat origin master"

