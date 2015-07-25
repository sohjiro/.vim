DOT_VIM_FOLDER=~/.vim
GIT="hash git >/dev/null && /usr/bin/env git $1"

cd $DOT_VIM_FOLDER
echo "\033[0;32mGetting current branch...\033[0m"
CURRENT_BRANCH=`eval $GIT "rev-parse --abbrev-ref HEAD"`
echo "\033[0;32mCurrent branch is $CURRENT_BRANCH...\033[0m"

echo "\033[0;32mStashing your changes...\033[0m"
eval $GIT "stash"

echo "\033[0;32mMoving to master...\033[0m"
eval $GIT "checkout master"

echo "\033[0;32mFetching last changes...\033[0m"
eval $GIT "pull"

echo "\033[0;32mReturning to your branch...\033[0m"
eval $GIT "checkout $CURRENT_BRANCH"

echo "\033[0;32mPop up your changes...\033[0m"
eval $GIT "stash pop"
