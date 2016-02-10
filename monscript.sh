#!/usr/bin/env bash


cp -R output $HOME/output

cd $HOME

#configuration
git config --global user.email "med.amine.sabri@gmail.com"
git config --global user.name "aminesabri"
git config --global push.default simple

git clone --quiet https://${GH_TOKEN}@${GH_REF}  gh-pages > /dev/null

cd gh-pages
cp $HOME/output/faq.html ./index.html
ls -al index.html

 #add, commit and push files
 git add -f .
 git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to master"
#git push -fq origin master > /dev/null
 git push -f -q https://${GH_TOKEN}@${GH_REF} origin gh-pages > /dev/null

 echo -e "Deploy completed\n"

 #fi
