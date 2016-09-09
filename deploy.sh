#!/bin/bash
git config --global user.email "{email}"
git config --global user.name "{username}"

rsync -auv --include="./app/" --include="package.json" --include=".gitignore" --include="README.md" --include="" ./ ./deployment

cd deployment
git add .
git commit -am "Circle CI #$CIRCLE_BUILD_NUM"
git push origin master 
