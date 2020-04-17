#! /bin/bash


echo "Abdallah Arabyat"

sed -i "s/{HOSTNAME}/$HOSTNAME/g" web/index.html
sed -i "s/{USER}/$USER/g" web/index.html
sed -i "s/{GIT_BRANCH}/$(git rev-parse --abbrev-ref HEAD)/g" web/index.html
sed -i "s/{GIT_REPO}/$(git config --get remote.origin.url)/g" web/index.html
sed -i "s/{AZURE_VARIABLE}/$TEST/g" web/index.html
sed -i "s/{PWD}/$dir/g" web/index.html
