#!/bin/sh
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
hugo 

git add -A
git rm --cached -r themes/hugo-primer

msg="rebuilding site `LANG=C date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push -u origin main