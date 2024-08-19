#!/bin/bash

git config --global pull.rebase true
git reset --hard HEAD
git pull

exit 0