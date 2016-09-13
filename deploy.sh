#!/bin/bash
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_USERNAME}"

rsync -av --include="app/***" --include="package.json" --include="README.md" --exclude="*" ./ ./deployment

cd deployment
git add .
git commit -am "Circle CI #$CIRCLE_BUILD_NUM"
git push origin master 
