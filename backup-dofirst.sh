#!/bin/sh

# first commit

source ~/my-git-tools/my_custom.env

git init
git add .
git commit -m "Start: first backup"
git branch -M main
git remote add origin https://github.com/WojGeek/gittools.git
git remote set-url origin https://$MY_TOKEN@github.com/WojGeek/gittools.git


git push -u origin main