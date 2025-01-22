#!/bin/sh

rsync -av --delete ~/Documents/dwsupport/posts/ ~/Code/dwsupport/content/posts/

git add .
git commit -m "Automated commit from deploy script"

hugo && firebase deploy
