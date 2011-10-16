#!/bin/sh

org='CodingDojo'
repository='MUC_10_2011_Kata_Team'
description='Cyberdojo'
username='CodingDojoCommitter'
password=''
email='dojo@deger.eu'

git config user.name $username
git config user.email $email

curl -u "$username:$password" -H "Content-Type: application/json" -X POST -d '{"name":"'$repository'","description":"'$description'","has_wiki":false,"has_issues":false,"has_downloads":false}' https://api.github.com/orgs/$org/repos
git remote add origin https://$username:$password@github.com/$org/$repository.git
git push origin master
