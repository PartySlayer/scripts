#!/bin/bash

# asks for commit comment and stores it

 echo -n "Commento: "
  read comment

# asks for origin ssh

 echo -n "Origin: "
  read origin

# initialize the repo, branches to main, adds directory content and commits
# it into branch main, adds the provided remote origins and pushes it.

 git init
 git add *
 git commit -m "$comment"
 git branch -M main
 git remote add origin "$origin"
 git push -u origin main

  echo "Repository creata."
