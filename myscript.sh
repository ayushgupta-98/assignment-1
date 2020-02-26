#!/bin/bash
read -p "Enter the github repository link: " link
git clone $link
read -p 'Enter the JIRA user ID: ' userid
sed -i "s/DEVOPS/$userid/g" devops/commit-msg
cd devops
git commit -a -m "Replacing DEVOPS"
git push origin master
